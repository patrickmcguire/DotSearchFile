class FixListOwnershipProblem < ActiveRecord::Migration
  def up
    rename_column :list_ownerships, :search_list_id, :list_id
  end

  def down
    rename_column :list_ownerships, :list_id, :search_list_id
  end
end
