class AddUserIdToMenus < ActiveRecord::Migration
  def up
    add_column :menus, :user_id, :integer
  end

  def dowm
    remove_column :menus, :user_id
  end
end
