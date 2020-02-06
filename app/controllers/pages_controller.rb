class PagesController < ApplicationController
  def home
    @contact = Contact.new
    @antiques = Antique.all
  end

  def infos
    @contact = Contact.new
  end

end
