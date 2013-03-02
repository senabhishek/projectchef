class EventMenu < ActiveRecord::Base
  attr_accessible :event_id, :menu_id, :selected_menu

  # Associations
  belongs_to :menu
  belongs_to :event
end
