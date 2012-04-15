class FilterTag < ActiveRecord::Base
  belongs_to :filter
  belongs_to :tag
end
