class User < ActiveRecord::Base
  has_many :invoices, dependent: :destroy

  validates :first_name, :last_name, :email_address, presence: true
  validates :first_name, :last_name, length: { maximum: 50 }
  validates :email_address, uniqueness: true, length: { maximum: 80 }
  validates_associated :invoices

end
