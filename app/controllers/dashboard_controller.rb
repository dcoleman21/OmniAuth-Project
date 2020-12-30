class DashboardController < ApplicationController
  def show
    conn = Faraday.new(
      url: 'https://api.github.com',
      headers: {
          'Authorization': "token #{current_user.token}"
      }
    )
    response = conn.get('/user/repos')
     @repo_data = JSON.parse(response.body, symbolize_names: true)


    repo_status_public = []
    @repo_data.each do |data|
     repo_status_public << if data[:private] == false
     else
      data[:private]
      require "pry"; binding.pry
     end
    end
  end
end
