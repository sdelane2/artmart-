class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :artwork
      t.references :user
      t.date :date
      t.time :time
      t.timestamps
    end
  end
end
