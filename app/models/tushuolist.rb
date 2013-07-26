class Tushuolist < ActiveRecord::Base
  attr_accessible :title, :status, :tushuoimg

  #has_many
  has_many :taggings
  has_many :tushuosorts, :through => :taggings

  #scope
  scope :open, where(:status => 0)
  scope :tag_with, lambda{|tag_id| joins(:tushuosorts).where("tushuosorts.id = ?", tag_id)}
  scope :recent, lambda{|date| where(["created_at > ? ", date])}

  def self.with_out_checked(tushuo)
    @not_in_list_id = Array.new
    tushuo.each do |t|
      @not_in_list_id << t.id
    end
    tushuo = Tushuolist.where('id not in (?)', @not_in_list_id)
  end

  mount_uploader :tushuoimg, ImageUploader

end
