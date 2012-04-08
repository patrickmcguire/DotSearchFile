class Search < ActiveRecord::Base
  has_many :search_tags
  has_many :tags, :through => :search_tags
  has_many :search_list_searches
  has_and_belongs_to_many :search_lists, :through => :search_list_searches
  has_many :search_subscriptions
  has_many :users, :through => :search_subscriptions
  has_many :search_ownerships
  has_many :users, :through => :search_ownerships
end
