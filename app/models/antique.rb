class Antique < ApplicationRecord
  has_one_attached :photo
  validates :title, presence: true
  belongs_to :category
end
