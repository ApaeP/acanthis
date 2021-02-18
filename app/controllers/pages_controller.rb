class PagesController < ApplicationController
  def home
    @antiques = Antique.all
  end

  def infos

  end

  def salons

  end

  def sncao

  end

end
