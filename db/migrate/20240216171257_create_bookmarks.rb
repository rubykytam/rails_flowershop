class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.string :quantity
      t.string :integer
      t.references :flower, null: false, foreign_key: true
      t.references :bunch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
