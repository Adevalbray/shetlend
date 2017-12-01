class ShetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @shetlands = Shetland.all
  end

  def show
    @reservation = Reservation.new
    @shetland = Shetland.find(params[:id])
  end

  # def new
  #   @shetland = Shetland.new
  # end

  # def create
  #   @shetland = Shetland.new(shetland_params)

  #   if @shetland.save
  #     redirect_to shetland_path(@shetland)
  #   else
  #     render :new
  #   end
  # end

  # private

  # def shetland_params
  #   params.require(:shetland).permit(:name)
  # end

end
