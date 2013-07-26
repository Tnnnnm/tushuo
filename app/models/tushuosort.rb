class Tushuosort < ActiveRecord::Base
  attr_accessible :status, :title, :tushuocover
  scope :open, where(:status => 0)
  scope :recent, lambda{|date| where(["created_at > ? ", date])}

  #has_many
  has_many :taggings
  has_many :tushuolists, :through => :taggings

  mount_uploader :tushuocover, ImageUploader

end
