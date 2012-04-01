class CreateSearchLists < ActiveRecord::Migration
  def change
    create_table :search_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
