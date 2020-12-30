class SessionFacade
  def self.session_details(auth_hash)
    User.find_or_create_from_auth_hash(auth_hash)
  end
end
