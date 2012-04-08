class SearchList < ActiveRecord::Base
  has_many :search_list_searches
  has_many :search_list_tags
  has_and_belongs_to_many :searches, :through => :search_list_searches
  has_and_belongs_to_many :tags, :through => :search_list_tags
  
  has_many :list_ownerships
  has_many :users, :through => :list_ownerships
  has_many :list_subscriptions
  has_many :users, :through => :list_subscriptions
end
