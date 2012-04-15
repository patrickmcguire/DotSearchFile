class FixSequenceNames < ActiveRecord::Migration
  def up
    rename_table :search_list_searches_id_seq, :list_searches_id_seq
    rename_table :search_list_tags_id_seq, :list_tags_id_seq
    rename_table :search_lists_id_seq, :lists_id_seq
  end

  def down
    rename_table :list_searches_id_seq, :search_list_searches_id_seq
    rename_table :list_tags_id_seq, :search_list_tags_id_seq
    rename_table :lists_id_seq, :search_lists_id_seq
  end
end
