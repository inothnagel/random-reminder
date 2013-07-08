class RemoveItemsNameLimit < ActiveRecord::Migration
  def change
    change_column :items, :name, :text, :limit => nil
  end
end
