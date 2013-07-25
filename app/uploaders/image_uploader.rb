# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}"
  end

  def filename
	  random_token = Digest::SHA2.hexdigest("#{Time.now.utc}--#{model.id.to_s}").first(20)
    ivar = "@#{mounted_as}_secure_token"    
    token = model.instance_variable_get(ivar)
    token ||= model.instance_variable_set(ivar, random_token)
    "#{token}.#{file.extension}" if original_filename
  end

   version :icon do
     process :resize_to_limit => [70, 96]
   end

   version :cover do
    process :resize_to_limit => [175, 238]
   end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
