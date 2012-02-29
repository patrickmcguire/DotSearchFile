class CreateSearchStrings < ActiveRecord::Migration
  def change
    create_table :search_strings do |t|
      t.string :search

      t.timestamps
    end
  end
end
