class RemoveFromChefApplications < ActiveRecord::Migration
  def up
    remove_column :chef_applications, :profile_picture
  end

  def down
    add_column :chef_applications, :profile_picture, :string
  end
end
