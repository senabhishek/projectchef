class Appetizer < ActiveRecord::Base
  attr_accessible :description, :name

  # Associations
  belongs_to :users
  has_one :photos, :as => :imageable
  has_and_belongs_to_many :menus
end
