class SessionsController < ApplicationController
  def create
    client_id = '8fddb31ec45c0f3551c8'
    client_secret = 'c95c3d3e3f4307580eef60c9d3e7be6cae391c6a'
    code = params[:code]

    conn = Faraday.new(url: 'https://github.com', headers: {'Accept': 'application/json'})

    response = conn.post('/login/oauth/access_token') do |req|
      req.params['code'] = code
      req.params['client_id'] = client_id
      req.params['client_secret'] = client_secret
    end

    data = JSON.parse(response.body, symbolize_names: true)
    access_token = data[:access_token]

    conn = Faraday.new(
      url: 'https://api.github.com',
      headers: {
          'Authorization': "token #{access_token}"
      }
    )
    response = conn.get('/user')
    data = JSON.parse(response.body, symbolize_names: true)

    user          = User.find_or_create_by(uid: data[:id])
    user.username = data[:login]
    user.uid      = data[:id]
    user.token    = access_token
    user.save

    session[:user_id] = user.id
    redirect_to dashboard_path
  end
end
