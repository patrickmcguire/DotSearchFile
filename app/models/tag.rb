class Tag < ActiveRecord::Base
  has_and_belongs_to_many :searches
  has_and_belongs_to_many :search_lists
end
