class Event < ActiveRecord::Base
  attr_accessible :budget, :end_time, :event_date, :num_of_appetizers, :num_of_desserts, :num_of_entrees, :number_of_guests, :occasion, :start_time

  attr_protected :event_price, :final_price

  # Associations
  belongs_to :users
  has_many :photos, :as => :imageable
  has_many :addresses, :as => :addressable
  has_many :event_menus
  has_many :menus, :through => :event_menus
end
