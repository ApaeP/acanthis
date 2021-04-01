class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :antique

  after_commit :delete_attachments

  def delete_attachments
    self.antique.photo.purge if self.antique.photo.attached?
  end
end
