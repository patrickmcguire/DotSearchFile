class AddOrderFieldToSearchListSearch < ActiveRecord::Migration
  def up
    add_column(:search_list_searches, :position, :integer)
  end
  
  def down
    remove_column(:search_list_searches, :position)
  end
end
