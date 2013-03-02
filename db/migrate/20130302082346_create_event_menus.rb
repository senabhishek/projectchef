class CreateEventMenus < ActiveRecord::Migration
  def change
    create_table :event_menus do |t|
      t.boolean :selected_menu
      t.references :event
      t.references :menu

      t.timestamps
    end
  end
end
