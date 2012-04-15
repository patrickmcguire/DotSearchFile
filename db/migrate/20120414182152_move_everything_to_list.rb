class MoveEverythingToList < ActiveRecord::Migration
  def up
    rename_table :search_list_searches, :list_searches
    rename_column :list_searches, :search_list, :list_id
    rename_column :list_searches, :search, :search_id
    
    rename_table :search_list_tags, :list_tags
    rename_column :list_tags, :search_list_id, :list_id
    
    drop_table :search_subscriptions
  end

  def down
    rename_table :list_searches, :search_list_searches
    rename_column :search_list_searches, :list_id, :search_list_id
    
    rename_table :list_tags, :search_list_tags
    rename_column :search_list_tags, :list_id, :search_list_id
    
    create_table :search_subscriptions do |t|
      t.integer :user_id
      t.integer :search_id
      t.timestamps
    end
  end
end
