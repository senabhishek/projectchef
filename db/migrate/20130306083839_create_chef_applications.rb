class CreateChefApplications < ActiveRecord::Migration
  def change
    create_table :chef_applications do |t|
      t.string :first_name, :null => false, :default => ""
      t.string :last_name, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.integer :phone_number, :null => false, :default => 0
      t.text :personal_story, :null => false, :default => ""
      t.text :motivations, :null => false, :default => ""

      t.timestamps
    end
    add_index :chef_applications, :email, :unique => true
  end
end
