class DropEventMenuTable < ActiveRecord::Migration
  def up
    drop_table :event_menus
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
