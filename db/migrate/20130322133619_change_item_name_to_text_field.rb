class ChangeItemNameToTextField < ActiveRecord::Migration
  def up
    change_column :items, :name, :text
  end

  def down
    change_column :items, :name, :string
  end
end
