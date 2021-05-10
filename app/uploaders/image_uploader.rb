class ImageUploader < Shrine
  Attacher.validate do
   validate_max_size  12*1024*1024
  end
end
