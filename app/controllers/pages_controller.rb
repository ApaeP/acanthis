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
    @category = Category.find_by(title: "Salon Dij'Antik 2017")
    @antiques = Antique.where(category: @category).order(created_at: 'DESC')
  end

  def modal
    puts "\n\n\n\n\n\n"

    @category = Category.find_by(title: params[:category])
    # puts "\ncategory : #{@category.title}\n\n"
    if params[:nav]
      antiques = Antique.where(category: @category).order(created_at: 'DESC')
      # puts "\nantiques : #{antiques.map(&:id)}\n\n"

      @current_antique = Antique.find(params[:antique])
      # puts "\ncurrent antique : #{@current_antique} id#{@current_antique.id}\n\n"
      @antique = ((params[:nav] == 'next') ? next_element(@current_antique, antiques) : previous_element(@current_antique, antiques))
      # puts "\n#{params[:nav]} antique : #{@current_antique}\n\n"
    else
      @antique = Antique.find(params[:id])
    end

    puts "\n\n\n\n\n\n"
    respond_to do |format|
      format.js
    end
  end

  def next_element(element, array)
    return array.first if element == array.last
    array[(array.find_index(element) + 1)]
  end

  def previous_element(element, array)
    return array.last if element == array.first
    array[(array.find_index(element) - 1)]
  end
end

