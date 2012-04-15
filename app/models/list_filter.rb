class ListFilter < ActiveRecord::Base
  belongs_to :list
  belongs_to :filter
  
  validates_uniqueness_of :filter_id, :scope => :list_id
end
