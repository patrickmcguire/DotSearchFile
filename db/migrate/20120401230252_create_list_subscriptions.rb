class CreateListSubscriptions < ActiveRecord::Migration
  def change
    create_table :list_subscriptions do |t|
      t.integer       :search_list_id
      t.integer       :user_id
      t.timestamps
    end
  end
end
