class CreateSearchListTags < ActiveRecord::Migration
  def change
    create_table :search_list_tags do |t|
      t.integer     :search_list_id, :limit => 8
      t.integer     :tag_id, :limit => 8
      t.timestamps
    end
  end
end
