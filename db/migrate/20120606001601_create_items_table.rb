class CreateItemsTable < ActiveRecord::Migration
  def up
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.integer :supplier_id
    end
  end

  def down
    drop_table :items
  end
end
