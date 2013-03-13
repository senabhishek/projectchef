class CreateAppetizersMenus < ActiveRecord::Migration
  def up
    create_table :appetizers_menus, :id => false do |t|
    t.references :menu
    t.references :appetizer

    end
    add_index :appetizers_menus, [:menu_id, :appetizer_id]
    add_index :appetizers_menus, [:appetizer_id, :menu_id]
  end

  def down
    drop_table :appetizers_menus
  end
end
