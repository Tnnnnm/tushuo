class Tushuosort < ActiveRecord::Base
  attr_accessible :status, :title, :tushuocover
  scope :open, where(:status => 0)

  mount_uploader :tushuocover, ImageUploader

end
