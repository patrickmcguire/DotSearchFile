class SearchList < ActiveRecord::Base
  has_and_belongs_to_many :searches
  has_and_belongs_to_many :tags
  
  has_many :list_ownerships
  has_many :list_subscriptions
end
