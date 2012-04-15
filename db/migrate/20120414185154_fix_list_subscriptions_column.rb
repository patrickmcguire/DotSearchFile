class FixListSubscriptionsColumn < ActiveRecord::Migration
  def up
    rename_column :list_subscriptions, :search_list_id, :list_id
  end

  def down
    rename_column :list_subscriptions, :list_id, :search_list_id
  end
end
