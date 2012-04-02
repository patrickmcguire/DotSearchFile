class CreateListOwnerships < ActiveRecord::Migration
  def change
    create_table :list_ownerships do |t|
      t.boolean     :public
      t.integer     :search_list_id
      t.integer     :user_id
      t.timestamps
    end
  end
end
