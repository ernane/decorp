class Invoice < ActiveRecord::Base
  self.primary_key = 'number'
  belongs_to :user, counter_cache: true

  enum status: { open: 0, paid: 1, suspended: 2 }

end
