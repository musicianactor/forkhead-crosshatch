class Panel < ActiveRecord::Base
  attr_accessible :caption, :issue_id
  
  belongs_to :issue
  
  acts_as_list :scope => :issue_id
  
  has_attached_file :image
end
