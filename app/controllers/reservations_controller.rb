class ReservationsController < ApplicationController
  def create
    @shetland = Shetland.find(params[:shet_id])
    @reservation = Reservation.new(reservation_params)

    start_time = params[:reservation][:start_time]
    start_time_string_ruby_style = Time.strptime(start_time, "%m/%d/%Y %I:%M %p").strftime("%Y-%m-%d %I:%M")
    @reservation.start_time = start_time_string_ruby_style

    @reservation.user = current_user
    @reservation.shetland = @shetland

    # binding.pry
    if @reservation.save
      redirect_to reservations_path
    else
      render "shets/show"
    end
  end

  def index
    @reservations = current_user.reservations
  end

  def reservation_params
    params.require(:reservation).permit(:duration)
  end
end




