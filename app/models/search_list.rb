class SearchList < ActiveRecord::Base
  has_many :searches
  has_many_and_belongs_to_many :users
  has_many_and_belongs_to_many :owners, :foreign_key => 'user_id'
  has_many_and_belongs_to_many :search_tags
end
