class Issue < ActiveRecord::Base
  attr_accessible :title, :content, :panels_attributes
  
  has_many :panels
  
  accepts_nested_attributes_for :panels, :allow_destroy => true
  
  named_scope :recent, :order => 'created_at', :limit => 1
  named_scope :active, :conditions => {:status => 'active'}
  
  def self.latest
    active.recent.first
  end
end
