class PagesController < ApplicationController
  def home
    @antiques = Antique.all
  end
end
