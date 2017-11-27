class CreateShetlands < ActiveRecord::Migration[5.0]
  def change
    create_table :shetlands do |t|
      t.string :name
      t.integer :price_per_hour, default: 0
      t.integer :age, default: 4
      t.text :description
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
