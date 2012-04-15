class List < ActiveRecord::Base
  has_many :list_filters, :dependent => :destroy
  has_many :list_tags, :dependent => :destroy
  has_many :filters, :through => :list_filters
  has_many :tags, :through => :list_tags
  
  has_one :list_ownership, :dependent => :destroy
  has_one :owner, :through => :list_ownerships, :source => :user
  has_many :list_subscriptions, :dependent => :destroy
  has_many :subscribers, :through => :list_subscriptions
  
end