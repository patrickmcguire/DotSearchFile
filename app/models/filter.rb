class Filter < ActiveRecord::Base
  has_many :filter_tags, :dependent => :destroy
  has_many :tags, :through => :filter_tags
  has_many :list_filters, :dependent => :destroy
  has_many :lists, :through => :list_filters, :dependent => :destroy # this is kind of intense
  has_one :filter_ownership, :dependent => :destroy
  has_one :owner, :through => :filter_ownership, :source => :user
  
  validates :filter, :uniqueness => true
end