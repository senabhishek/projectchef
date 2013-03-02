class Address < ActiveRecord::Base
  attr_accessible :address_kind, :address_type, :address_type_identifier, :city_town, :country, :minor_municipality, :postal_area, :province_state_county, :street_direction, :street_number, :street_number_suffix, :street_type

  # Associations
  belongs_to :addressable, :polymorphic => true
end
