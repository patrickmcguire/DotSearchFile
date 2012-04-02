class ListSubscription < ActiveRecord::Base
  belongs_to :search_list
  belongs_to :user
end
