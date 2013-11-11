class Individual < ActiveRecord::Base
  attr_accessible :current_first_name, :current_last_name
  validates :current_first_name,  :presence => true,
            :length => { :minimum => 3 }
  validates :current_last_name, :presence => true,
            :length => { :minimum => 1 }
end
