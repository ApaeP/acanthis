class Antique < ApplicationRecord
  has_one_attached :photo
  validates :title, presence: true

  validates :category, presence: true, inclusion: { in: ["Achat/Vente", "Art Africain", "Salon Dij'Antik 2017", "Art Asiatique", "Archéologie"] }
end
