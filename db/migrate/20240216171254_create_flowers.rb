class CreateFlowers < ActiveRecord::Migration[7.1]
  def change
    create_table :flowers do |t|
      t.string :name
      t.integer :price
      t.string :color

      t.timestamps
    end
  end
end
