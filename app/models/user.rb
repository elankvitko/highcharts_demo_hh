class User < ApplicationRecord
  has_secure_password

  has_many :heart_rates
  has_many :calories
  has_many :activities
end
