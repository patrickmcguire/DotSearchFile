class Search < ActiveRecord::Base
  has_and_belongs_to_many :search_tags
end
