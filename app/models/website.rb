class Website < ActiveRecord::Base
  attr_accessible :name, :title, :subtitle
  validates :name,  :presence => true
  validates :title, :presence => true,
            :length => { :minimum => 5 }
end
