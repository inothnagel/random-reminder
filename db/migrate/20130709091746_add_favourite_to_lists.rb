class AddFavouriteToLists < ActiveRecord::Migration
  def change
    add_column :lists, :favourite, :boolean
  end
end
