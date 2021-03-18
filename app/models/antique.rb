class Antique < ApplicationRecord
  has_one_attached :photo
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :title, presence: true
  belongs_to :category
end
