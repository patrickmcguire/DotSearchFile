class CreateSearchLists < ActiveRecord::Migration
  def change
    create_table :search_lists do |t|
      t.string        :name
      t.integer       :user_id
      t.integer       :list_id
      t.timestamps
    end
  end
end
