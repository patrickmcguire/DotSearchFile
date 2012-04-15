class SearchesBecomeFilters < ActiveRecord::Migration
  def up
    rename_table :searches, :filters
    rename_column :filters, :search, :filter
    rename_table :searches_id_seq, :filters_id_seq
    
    rename_table :list_searches, :list_filters
    rename_table :list_searches_id_seq, :list_filters_id_seq
    rename_column :list_filters, :search_id, :filter_id
    
    rename_table :search_ownerships, :filter_ownerships
    rename_table :search_ownerships_id_seq, :filter_ownerships_id_seq
    rename_column :filter_ownerships, :search_id, :filter_id
    
    rename_table :search_tags, :filter_tags
    rename_table :search_tags_id_seq, :filter_tags_id_seq
    rename_column :filter_tags, :search_id, :filter_id
  end

  def down
    rename_table :filters, :searches
    rename_column :searches, :filter, :search
    rename_table :filters_id_seq, :searches_id_seq
    
    rename_column :list_filters, :filter_id, :search_id
    rename_table :list_filters, :list_searches
    rename_table :list_filters_id_seq, :list_searches_id_seq
    
    rename_column :filter_ownerships, :filter_id, :search_id
    rename_table :filter_ownerships, :search_ownerships
    rename_table :filter_ownerships_id_seq, :search_ownerships_id_seq
    
    rename_column :filter_tags, :filter_id, :search_id
    rename_table :filter_tags, :search_tags 
    rename_table :filter_tags_id_seq, :search_tags_id_seq 
  end
end
