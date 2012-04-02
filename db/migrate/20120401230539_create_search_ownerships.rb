class CreateSearchOwnerships < ActiveRecord::Migration
  def change
    create_table :search_ownerships do |t|
      t.boolean     :public
      t.integer     :user_id, :foreign_key
      t.integer     :search_id, :foreign_key
      t.timestamps
    end
  end
end
