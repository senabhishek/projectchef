class Menu < ActiveRecord::Base
  attr_accessible :offered_price

  # Associations
  has_and_belongs_to_many :appetizers
  has_and_belongs_to_many :entrees
  has_and_belongs_to_many :desserts
  has_many :eventmenus
  has_many :events, :through => :eventmenus
end
