class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :text
      t.boolean :recommend

      t.timestamps
    end
  end
end
