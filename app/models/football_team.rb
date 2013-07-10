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

  def score(stats, league)
    sack = sack_score(stats, league).to_i
    block = block_score(stats, league).to_i
    fum = fumble_score(stats, league).to_i
    int = int_score(stats, league).to_i
    safety = safety_score(stats, league).to_i
    points = points_allowed(stats, league).to_i
    score = sack + block + fum + int + safety + points
    score
  end

  def sack_score(stats, league)
    sack_stat = stats["Sacks"]
    sack_rule = league.def_sack
    score = sack_stat * sack_rule
    score
  end

  def block_score(stats, league)
    block_stat = stats["BlockedKicks"]
    block_rule = league.def_block_kick
    score = block_stat * block_rule
    score    
  end

  def fumble_score(stats, league)
    fum_stat = stats["FumblesRecovered"]
    fum_rule = league.def_fumb
    score = fum_stat * fum_rule
    score
  end

  def int_score(stats, league)
    int_stat = stats["Interceptions"]
    int_rule = league.def_int
    score = int_stat * int_rule
    score
  end

  def safety_score(stats, league)
    safety_stat = stats["Safeties"]
    safety_rule = league.def_safety
    score = safety_stat * safety_rule
    score    
  end

  def points_allowed(stats, league)
    points = stats["PointsAllowed"].to_i
    return league.pts_all_0 if points == 0
    return league.pts_all_6 if points <= 6
    return league.pts_all_13 if points <= 13
    return league.pts_all_17 if points <= 17
    return league.pts_all_27 if points <= 27
    return league.pts_all_34 if points <= 34
    return league.pts_all_45 if points <= 45
    return league.pts_all_46 if points >= 46
  end

end