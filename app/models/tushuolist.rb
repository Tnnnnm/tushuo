class Tushuolist < ActiveRecord::Base
  attr_accessible :title, :status, :tushuoimg
  scope :open, where(:status => 0)

  #has_many
  has_many :taggings
  has_many :tushuosorts, :through => :taggings

  #scope
  scope :tag_with, lambda{|tag_id| joins(:tushuosorts).where("tushuosorts.id = ?", tag_id)}

  mount_uploader :tushuoimg, ImageUploader
end
