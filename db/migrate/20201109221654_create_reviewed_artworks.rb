class CreateReviewedArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :reviewed_artworks do |t|
      t.integer :review_id
      t.integer :artwork_id

      t.timestamps
    end
  end
end
