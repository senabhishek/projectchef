class AddUserIdToEvents < ActiveRecord::Migration
  def up
    add_column :events, :user_id, :integer
  end

  def dowm
    remove_column :events, :user_id
  end
end
