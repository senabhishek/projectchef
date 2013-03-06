class ChefApplication < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :motivations, :personal_story, :phone_number
end
