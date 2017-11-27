class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :status
      t.datetime :start_time
      t.integer :duration, default: 1
      t.integer :price_per_hour
      t.references :shetland, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
