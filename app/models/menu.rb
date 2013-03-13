class Menu < ActiveRecord::Base
  attr_accessible :offered_price

  # Associations
  belongs_to :users
  has_and_belongs_to_many :appetizers
  has_and_belongs_to_many :entrees
  has_and_belongs_to_many :desserts
  has_many :event_menus
  has_many :events, :through => :event_menus
end
