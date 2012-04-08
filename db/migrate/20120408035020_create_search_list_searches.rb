class CreateSearchListSearches < ActiveRecord::Migration
  def change
    create_table :search_list_searches do |t|
      t.integer     :search, :limit => 8
      t.integer     :search_list, :limit => 8
      t.timestamps
    end
  end
end
