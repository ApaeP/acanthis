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
    @antiques = Antique.where(category: Category.first)
    @category = Category.first
  end

  def modal
    @category = Category.find_by(title: params[:category])
    if params[:nav]
      antiques = Antique.where(category: @category)
      @current_antique = Antique.find(params[:antique])
      @antique = ((params[:nav] == 'next') ? next_element(@current_antique, antiques) : previous_element(@current_antique, antiques))
      puts "\n\n\n\n\n\n\n\n\n\n\n#{@antique}\n\n\n\n\n\n\n\n\n\n\n\n"
    else
      @antique = Antique.find(params[:id])
    end
    respond_to do |format|
      format.js
    end
  end

  def next_element(element, array)
    elem = array[(array.find_index(element) + 1)] rescue array[0]
    puts "\n\n\n\n\n\n\n\n\n\n\n\ncaca"
    puts "\n\n\n\n\n\n\n\n\n\n\n#{elem}\n\n\n\n\n\n\n\n\n\n\n\n"
    puts "caca\n\n\n\n\n\n\n\n\n\n\n\n"
    elem
  end

  def previous_element(element, array)
    elem = array[(array.find_index(element) - 1)] rescue array[0]
    puts "\n\n\n\n\n\n\n\n\n\n\n\ncaca"
    puts "\n\n\n\n\n\n\n\n\n\n\n#{(array.find_index(element)}\n\n\n\n\n\n\n\n\n\n\n\n"
    puts "caca\n\n\n\n\n\n\n\n\n\n\n\n"
    elem
  end
end

