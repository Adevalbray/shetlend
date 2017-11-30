class RemovePricePerHourFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :price_per_hour, :integer
  end
end
