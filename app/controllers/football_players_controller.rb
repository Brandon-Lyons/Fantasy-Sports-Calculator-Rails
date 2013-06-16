class FootballPlayersController < ApplicationController
  before_filter :check_for_params

  def index
    @players = @param.all
  end

  def show
    @player = FootballPlayer.find( params[:id] )
    @profile = @player.profile(@player.player_id)
  end

  private
  def check_for_params
    if params[:position]
      @param = FootballPlayer.where( position: params[:position] )
    else
      @param = FootballPlayer
    end
  end

end