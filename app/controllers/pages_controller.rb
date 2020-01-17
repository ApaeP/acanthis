class PagesController < ApplicationController
  def home
    @antiques = Antique.all
    @markers = {
        lat: 50,
        lng: 50
      }
  end
end
