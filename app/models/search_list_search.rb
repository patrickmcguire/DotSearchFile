class SearchListSearch < ActiveRecord::Base
  belongs_to :search_list
  belongs_to :search
end
