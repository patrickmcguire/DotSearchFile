class ListTag < ActiveRecord::Base
  belongs_to :list
  belongs_to :tag
  
  validates_uniqueness_of :tag_id, :scope => :list_id
end
