class ChangeQuantityTypeAndRemoveIntegerFromBookmarks < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookmarks, :integer, :string
    remove_column :bookmarks, :quantity, :integer
  end
end
