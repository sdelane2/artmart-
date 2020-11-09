class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :image_url
      t.string :title
      t.string :artist_name
      t.string :gallery
      t.string :medium
      t.integer :year
      t.string :dimensions
      t.integer :price

      t.timestamps
    end
  end
end
