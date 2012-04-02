class User < ActiveRecord::Base
  has_many :search_ownerships
  has_many :search_subscriptions
  has_many :searches, :through => :search_ownerships
  has_many :searches, :through => :search_subscriptions

  has_many :list_ownerships
  has_many :list_subscriptions
  has_many :search_lists, :through => :list_ownerships
  has_many :search_lists, :through => :list_subscriptions
  
  attr_accessible :name, :email, :password
  validates :name, :presence => true

end
