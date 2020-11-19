class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save!

    # no need for app/views/cocktails/create.html.erb
    redirect_to cocktails_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :picture_url)
  end
end
