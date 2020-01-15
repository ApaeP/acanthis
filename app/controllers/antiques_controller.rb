class AntiquesController < ApplicationController

  def index
    @antiques = Antique.all
  end

  def show
    @antique = set_antique
  end

  def new
    @antique = Antique.new
  end

  def create
    @antique = Antique.new(antique_params)
    @antique.save
    redirect_to antique_path(@antique)
  end

  def edit
    @antique = set_antique
  end

  def update
    @antique.update(antique_params)
  end

  def destroy
    @antique.destroy
    redirect_to antique_index_path
  end

  private

  def set_antique
    @antique = Antique.find(params[:id])
  end

  def antique_params
    params.require(:antique).permit(:title, :description, :photo)
  end
end