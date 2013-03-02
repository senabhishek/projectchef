class CreateMenusDessertsTable < ActiveRecord::Migration
  def up
    create_table :menus_desserts, :id => false do |t|
    t.references :menu
    t.references :dessert

    end
    add_index :menus_desserts, [:menu_id, :dessert_id]
    add_index :menus_desserts, [:dessert_id, :menu_id]
  end

  def down
    drop_table :menus_desserts
  end
end
