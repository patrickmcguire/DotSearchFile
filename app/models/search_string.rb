class SearchString < ActiveRecord::Base
  validates_presence_of :search
  validates_uniqueness_of :search
  has_and_belongs_to_many :SearchStringTags
end
