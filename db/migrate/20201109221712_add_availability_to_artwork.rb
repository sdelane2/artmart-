class AddAvailabilityToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :availability, :boolean
  end
end
