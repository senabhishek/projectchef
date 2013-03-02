class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.float :offered_price

      t.timestamps
    end
  end
end
