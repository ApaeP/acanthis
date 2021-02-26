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

  def test
    per_page = 24 # params[:per_page].to_i.zero? ? 24 : params[:per_page].to_i
    # @antiques = Antique.where(category_id: params[:category]).order("created_at DESC").all
    @antiques = Antique.all.order("created_at DESC")
    # @antiquespaginate = Antique.where(category_id: params[:category]).order("created_at DESC").paginate(page: params[:page], per_page: per_page)
    @antique = Antique.new
    # @category = Category.find_by(id: params[:category])
  end
end
