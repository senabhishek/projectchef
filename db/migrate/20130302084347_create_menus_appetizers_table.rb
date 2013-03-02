class CreateMenusAppetizersTable < ActiveRecord::Migration
  def up
    create_table :menus_appetizers, :id => false do |t|
    t.references :menu
    t.references :appetizer

    end
    add_index :menus_appetizers, [:menu_id, :appetizer_id]
    add_index :menus_appetizers, [:appetizer_id, :menu_id]
  end

  def down
    drop_table :menus_appetizers
  end
end
