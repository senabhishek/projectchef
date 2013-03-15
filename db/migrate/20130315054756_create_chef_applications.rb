class CreateChefApplications < ActiveRecord::Migration
  def change
    create_table :chef_applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.integer :phone_number
      t.text :about_me
      t.text :motivation
      t.binary :profile_picture

      t.timestamps
    end
  end
end
