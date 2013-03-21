class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :list
      t.string :name

      t.timestamps
    end
    add_index :items, :list_id
  end
end
