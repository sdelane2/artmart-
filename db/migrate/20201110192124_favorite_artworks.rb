class FavoriteArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_artworks do |t|
      t.integer :user_id
      t.integer :artwork_id
    end

  end
end
