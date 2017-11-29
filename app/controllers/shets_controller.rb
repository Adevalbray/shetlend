class ShetsController < ApplicationController
  def index
    @shetlands = Shetland.all
  end

  def show
    @shetland = Shetland.find(params[:id])
  end

  # def new
  #   @cocktail = Cocktail.new
  # end

  # def create
  #   @cocktail = Cocktail.new(cocktail_params)

  #   if @cocktail.save
  #     redirect_to cocktail_path(@cocktail)
  #   else
  #     render :new
  #   end
  # end

  # private

  # def shetland_params
  #   params.require(:shetland).permit(:name)
  # end

end
