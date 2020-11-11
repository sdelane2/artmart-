class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :purchased_artworks
    drop_table :reviewed_artworks
  end
end
