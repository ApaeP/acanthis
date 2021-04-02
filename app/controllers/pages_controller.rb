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

  # def test
  #   @category = Category.find_by(title: "Salon Dij'Antik 2017")
  #   @antiques = Antique.where(category: @category).order(created_at: 'DESC')
  # end

  # def modal
  #   @category = Category.find_by(title: params[:category])
  #   if params[:nav]
  #     antiques = Antique.where(category: @category).order(created_at: 'DESC')
  #     @current_antique = Antique.find(params[:antique])
  #     @antique = ((params[:nav] == 'next') ? next_element(@current_antique, antiques) : previous_element(@current_antique, antiques))
  #   else
  #     @antique = Antique.find(params[:id])
  #   end
  #   respond_to do |format|
  #     format.js
  #   end
  # end

  # def next_element(element, array)
  #   return array.first if element == array.last
  #   array[(array.find_index(element) + 1)]
  # end

  # def previous_element(element, array)
  #   return array.last if element == array.first
  #   array[(array.find_index(element) - 1)]
  # end
end

