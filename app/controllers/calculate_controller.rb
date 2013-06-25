class CalculateController < ApplicationController

  def index
    @user = User.find( params[:user_id] )
    @leagues = @user.football_leagues.all
  end


end