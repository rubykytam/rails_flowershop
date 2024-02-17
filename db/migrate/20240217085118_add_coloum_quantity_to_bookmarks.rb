class AddColoumQuantityToBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_column :bookmarks, :quantity, :integer, default: 1
  end
end
