class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
    @user = current_user
  end

  def new
    @booking = Booking.new
  end

  def create
    @player = Player.find(params[:player_id])
    @booking = Booking.new(booking_params)
    @booking.player = @player
    @booking.user = current_user
    @booking.confirmed = false
    if @booking.save
      redirect_to player_path(@player)
    else
      render "players/show", status: :unprocessable_entity
    end
  end

  def edit
    # if record.user == user
    @booking = Booking.find(params[:id])
    # end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(confirmed: true)
    redirect_to bookings_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to player_bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
