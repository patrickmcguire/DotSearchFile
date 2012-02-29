class CreateSearchStringTags < ActiveRecord::Migration
  def change
    create_table :search_string_tags do |t|
      t.string :tag
      t.timestamps
    end
  end
end
