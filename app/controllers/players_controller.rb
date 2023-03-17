class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]
  def index

    @players = policy_scope(Player)
  end

  def show
    authorize @player
  end

  def new
    @player = Player.new
    authorize @player
  end

  def create
    @player = Player.new(player_params)
    authorize @player
    @player.user = current_user
    if @player.save
      redirect_to player_path(@player)
    else
      render "players/show", status: :unprocessable_entity
    end
  end

  def edit
    authorize @player
  end

  def update
    authorize @player
    @player.update(player_params)
    redirect_to players_path(@player)
  end

  def destroy
    authorize @player
    @player.destroy
    redirect_to player_bookings_path(@player), status: :see_other
  end

  def myplayers
    @players = policy_scope(Player)
    @myplayers = current_user.players
    authorize @myplayers
  end


  #   @players = policy_scope(Player)
  #   @myplayers = []
  #   authorize @myplayers
  #   @players.each do |player|
  #     if player.user == current_user
  #       @myplayers << player
  #     end
  #   end
  #   return @myplayers
  # end

  private

  def player_params
    params.require(:player).permit(:full_name, :position, :nationality, :location, :height, :age, :last_club, :price, :photo)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
