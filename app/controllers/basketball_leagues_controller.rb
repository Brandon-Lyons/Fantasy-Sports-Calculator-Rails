class BasketballLeaguesController < ApplicationController

  def index
    @user = current_user
    @football_leagues = @user.basketball_leagues.all
  end

end