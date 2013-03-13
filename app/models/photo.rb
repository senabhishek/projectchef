class Photo < ActiveRecord::Base
  attr_accessible :caption, :file_path

  # Associations
  belongs_to :imageable, :polymorphic => true
end
