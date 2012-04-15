class FixSearchLists < ActiveRecord::Migration
  def up
    rename_table :search_lists, :lists
    remove_column :lists, :user_id
    remove_column :lists, :list_id
  end

  def down
    add_column :lists, :list_id, :integer
    add_column :lists, :user_id, :integer
    rename_table :lists, :search_lists
  end
end
