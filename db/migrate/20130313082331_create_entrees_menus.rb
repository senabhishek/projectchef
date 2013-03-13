class CreateEntreesMenus < ActiveRecord::Migration
  def up
    create_table :entrees_menus, :id => false do |t|
    t.references :menu
    t.references :entree

    end
    add_index :entrees_menus, [:menu_id, :entree_id]
    add_index :entrees_menus, [:entree_id, :menu_id]
  end

  def down
    drop_table :entrees_menus
  end
end
