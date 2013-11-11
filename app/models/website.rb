class Website < ActiveRecord::Base
  attr_accessible :name, :title, :subtitle
  validates :name,  :presence => true,:length => { :minimum => 5 }
  validates :title, :presence => true

end
