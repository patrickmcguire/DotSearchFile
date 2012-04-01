class User < ActiveRecord::Base
  has_many :searches
  has_many :search_lists
  
  attr_accessible :name, :email, :password
  validates :name, :presence => true

end
