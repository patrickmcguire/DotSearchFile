class Tag < ActiveRecord::Base
  has_many :search_tags
  has_many :search_list_tags
  has_and_belongs_to_many :searches, :through => :search_tags
  has_and_belongs_to_many :search_lists, :through => :search_list_tags
end
