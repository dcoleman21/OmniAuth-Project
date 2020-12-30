Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET'],
  {
    :name => 'github',
    :scope => ['user,repo'],
    :prompt => 'select_account',
    :image_aspect_ration => 'square',
    :access_type => 'offline'
  }
end
