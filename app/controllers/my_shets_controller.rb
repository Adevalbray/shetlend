class MyShetsController < ApplicationController
  def index
    @shetlands = Shetland.all
  end

  # def details
  # end

  def create
     @shetland = Shetland.new(shetland_params)
     @shetland.user = current_user

    if @shetland.save
      redirect_to my_shet_path(@shetland)
    else
      render "myshets/new"
    end
  end

  def new
    @shetland = Shetland.new
  end

  def show
    @shetland = Shetland.find(params[:id])
  end

  def shetland_params
    params.require(:shetland).permit(:name, :price_per_hour, :photo, :photo_cache)
  end
end
