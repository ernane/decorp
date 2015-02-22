# == Schema Information
#
# Table name: tab_params
#
#  id          :integer          not null, primary key
#  application :integer          not null
#  year        :integer          not null
#  operation   :integer          not null
#  number      :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TabParam < ActiveRecord::Base
end
