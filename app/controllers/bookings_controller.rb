class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @player = Player.find(params[:player_id])
    @booking = Booking.new(booking_params)
    @booking.player = @player
    @booking.user = current_user
    if @booking.save
      redirect_to player_path(@player)
    else
      render "players/show", status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
    redirect_to player_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
