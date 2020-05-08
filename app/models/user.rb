class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false },
                       length: { miniumu: 3, maximum: 25 }
  has_secure_password
end
