class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.text :item
      t.text :description
      t.integer :price
      t.text :catagory

      t.timestamps
    end
  end
end
