# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

     include Cloudinary::CarrierWave

     process :convert => 'png'

    # process :tags => ['user_picture']
  # Choose what kind of storage to use for this uploader:
  #storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

    version :standard do 
      process :resize_to_fill => [100,150, :north]
    end
    
    version :thumbnail do
      resize_to_fit(50,50)
    end

    # def public_id
    #   return model.short_name
    # end

end
