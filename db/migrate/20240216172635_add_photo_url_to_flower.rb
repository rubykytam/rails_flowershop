class AddPhotoUrlToFlower < ActiveRecord::Migration[7.1]
  def change
    add_column :flowers, :photo, :string
  end
end
