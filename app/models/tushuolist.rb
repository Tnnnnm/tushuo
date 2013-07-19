class Tushuolist < ActiveRecord::Base
  attr_accessible :title, :status, :tushuoimg
  scope :open, where(:status => 0)

  mount_uploader :tushuoimg, ImageUploader
end
