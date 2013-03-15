class AddToChefApplications < ActiveRecord::Migration
  def up
    add_column :chef_applications, :profile_pic, :string
  end

  def dowm
    remove_column :chef_applications, :profile_pic
  end
end
