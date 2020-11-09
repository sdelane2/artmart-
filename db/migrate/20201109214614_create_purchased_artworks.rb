class CreatePurchasedArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :purchased_artworks do |t|
      t.integer :user_id
      t.integer :artwork_id

      t.timestamps
    end
  end
end
