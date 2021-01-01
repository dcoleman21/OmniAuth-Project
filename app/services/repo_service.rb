class RepoService
  def self.public_repos(current_user)
    response = conn.get('/user/repos', {}, {'Authorization': "token #{current_user.token}"}) do |req|
      req.params['type'] = 'public'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.private_repos(current_user)
    response = conn.get('/user/repos', {}, {'Authorization': "token #{current_user.token}"}) do |req|
      req.params['type'] = 'private'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: 'https://api.github.com')
  end
end
