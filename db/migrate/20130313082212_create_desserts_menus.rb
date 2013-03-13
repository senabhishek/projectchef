class CreateDessertsMenus < ActiveRecord::Migration
  def up
    create_table :desserts_menus, :id => false do |t|
    t.references :menu
    t.references :dessert

    end
    add_index :desserts_menus, [:menu_id, :dessert_id]
    add_index :desserts_menus, [:dessert_id, :menu_id]
  end

  def down
    drop_table :desserts_menus
  end
end
