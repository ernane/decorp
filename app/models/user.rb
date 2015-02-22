class User < ActiveRecord::Base
  validates :first_name, :last_name, :email_address, presence: true
  validates :first_name, :last_name, length: { maximum: 50 }
  validates :email_address, uniqueness: true, length: { maximum: 80 }
end
