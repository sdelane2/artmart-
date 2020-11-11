class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :text
      t.boolean :recommend
      t.integer :user_id
      t.integer :artwork_id

      t.timestamps
    end
  end
end
