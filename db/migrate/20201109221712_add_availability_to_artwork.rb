class AddAvailabilityToArtwork < ActiveRecord::Migration[6.0]
  def change
    remove_column :artworks, :availability, :boolean
  end
end
