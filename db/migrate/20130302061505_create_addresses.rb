class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :street_number_suffix
      t.string :street_type
      t.string :street_direction
      t.string :address_type
      t.string :address_type_identifier
      t.string :minor_municipality
      t.string :city_town
      t.string :province_state_county
      t.string :postal_area
      t.string :country
      t.string :address_kind

      t.timestamps
    end
  end
end
