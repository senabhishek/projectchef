class CreateEventMenus < ActiveRecord::Migration
  def up
    create_table :event_menus, :id => false do |t|
      t.boolean :selected_menu
      t.column :event_id, :integer
      t.column :menu_id, :integer
      t.timestamps
    end
  end

  def down
    drop_table :event_menus
  end
end
