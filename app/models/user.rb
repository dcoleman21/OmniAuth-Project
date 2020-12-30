class User < ApplicationRecord
  def self.find_or_create_from_auth_hash(auth_hash)
    User.find_or_create_by(uid: auth_hash['uid'])
  end
end
