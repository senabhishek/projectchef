class CreateMenusEntreesTable < ActiveRecord::Migration
  def up
    create_table :menus_entrees, :id => false do |t|
    t.references :menu
    t.references :entree

    end
    add_index :menus_entrees, [:menu_id, :entree_id]
    add_index :menus_entrees, [:entree_id, :menu_id]
  end

  def down
    drop_table :menus_entrees
  end
end
