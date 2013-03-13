class EventMenu < ActiveRecord::Base
  attr_accessible :selected_menu

  belongs_to :event
  belongs_to :menu
end
