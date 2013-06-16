class FootballLeaguesController < ApplicationController

  def index
    @user = current_user
    @football_leagues = @user.football_leagues.all
  end

  def new
    @football_league = FootballLeague.new
  end

  def create
    @football_league = FootballLeague.create( params[:football_league] )
    if @football_league.save
      UserFootballLeague.create(user_id: current_user.id, football_league_id: FootballLeague.last.id)
      redirect_to :action => "index"
    else
      flash[:notice] = @football_league.errors.full_messages.join
      redirect_to :action => "new"
    end
  end

  def show
    @football_league = FootballLeague.find( params[:id] )
  end

  def edit
    @football_league = current_user.football_leagues.find( params[:id] )
  end

  def update
    p params
    @football_league = FootballLeague.find( params[:id] )
    hash = params[:football_league]
    new_hash = Hash[ hash.map{ |a, b| [a,
      begin
        Integer b
      rescue ArgumentError
        b
      end]}]
    if @football_league.update_attributes( new_hash )
      redirect_to user_football_league_url(current_user, @football_league)
    else
      flash[:notice] = @football_league.errors.full_messages.join
      redirect_to edit_user_football_league_path(current_user, @football_league)
    end
  end

  def destroy
    @football_league = FootballLeague.find( params[:id] )
    @football_league.destroy
    redirect_to :action => "index"
  end


end