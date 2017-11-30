class ReservationsController < ApplicationController
  def create
    @shetland = Shetland.find(params[:shetland_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.shetland = @reservation

    if @reservation.save
      redirect_to reservations_path(@reservation)
    else
      render "shetland/show"
    end
  end

    def reservation_params
    params.require(:reservation).permit(:content)
  end

  end

