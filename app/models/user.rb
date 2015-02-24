# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  first_name     :string(50)       not null
#  last_name      :string(50)       not null
#  email_address  :string(80)       not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  invoices_count :integer          default("0")
#

class User < ActiveRecord::Base
  has_many :invoices, dependent: :destroy

  validates :first_name, :last_name, :email_address, presence: true
  validates :first_name, :last_name, length: { maximum: 50 }
  validates :email_address, uniqueness: true, length: { maximum: 80 }
  validates_associated :invoices

end
