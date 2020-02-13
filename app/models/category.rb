class Category < ApplicationRecord
  has_many :antiques

  validates :title, presence: true
end
