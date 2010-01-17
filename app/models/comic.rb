class Comic < ActiveRecord::Base
  attr_accessible :title, :description, :about
  
  has_many :issues
end
