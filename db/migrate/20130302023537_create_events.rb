class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :final_price
      t.date :event_date
      t.time :start_time
      t.time :end_time
      t.float :event_price
      t.integer :number_of_guests
      t.integer :budget
      t.string :occasion
      t.integer :num_of_entrees
      t.integer :num_of_appetizers
      t.integer :num_of_desserts

      t.timestamps
    end
  end
end
