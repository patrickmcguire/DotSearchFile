class CreateSearchSubscriptions < ActiveRecord::Migration
  def change
    create_table :search_subscriptions do |t|
      t.integer       :user_id
      t.integer       :search_id
      t.timestamps
    end
  end
end
