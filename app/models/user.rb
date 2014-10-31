class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :email, type: String
  has_secure_password
  field :password_digest, type: String
  field :is_verified, type: Mongoid::Boolean, default: false
  field :is_admin, type: Mongoid::Boolean, default: false
end
