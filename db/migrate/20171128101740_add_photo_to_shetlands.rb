class AddPhotoToShetlands < ActiveRecord::Migration[5.0]
  def change
    add_column :shetlands, :photo, :string
  end
end
