class GetRidOfPasswordColumn < ActiveRecord::Migration
  def up
    execute <<-SQL
      ALTER TABLE users DROP COLUMN password;
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE users ADD COLUMN password TEXT;
    SQL
  end
end
