class Search < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :search_lists
  has_many :search_subscriptions
  has_many :search_ownerships
end
