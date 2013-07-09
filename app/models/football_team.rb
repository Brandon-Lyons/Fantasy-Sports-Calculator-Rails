require './lib/interface'
class FootballTeam < ActiveRecord::Base
  include Interface
  attr_accessible :full_name, :abbr_name, :photo

  def profile(team)
    profile_team(team)
  end

  def stats(year, week, team)
    stats_team(year, week, team)
  end

end