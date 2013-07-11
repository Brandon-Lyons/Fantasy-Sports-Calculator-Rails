require './lib/interface'
class FootballPlayer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :position, :player_id
  include Interface
  def profile(id)
    player_profile(id)
  end

  def stats(year, week, id)
    player_stats(year, week, id)
  end

  def scores(stats, league)
    pass = pass_score(stats, league)
    rush = rush_score(stats, league)
    rec = rec_score(stats, league)
    kick = kick_score(stats, league)
    misc = misc_score(stats, league)
    total = pass + rush + rec + kick + misc
    total
  end

  def pass_score(stats, league)
    td_score = stats["PassingTouchdowns"].to_i * league.pass_td
    yards_score = (stats["PassingYards"].to_i / 25) * league.pass_yards
    int_score = stats["PassingInterceptions"].to_i * league.int
    two_pt_score = stats["TwoPointConversionPasses"].to_i * league.pass_2pt
    total = td_score + yards_score + two_pt_score + int_score
    total
  end

  def rush_score(stats, league)
    td_score = stats["RushingTouchdowns"].to_i * league.rush_td
    yards_score = (stats["RushingYards"].to_i / 10) * league.rush_yards
    two_pt_score = stats["TwoPointConversionRuns"].to_i * league.rush_2pt
    total = td_score + yards_score + two_pt_score
    total
  end

  def rec_score(stats, league)
    td_score = stats["ReceivingTouchdowns"].to_i * league.rec_td
    yards_score = (stats["ReceivingYards"].to_i / 10) * league.rec_yards
    two_pt_score = stats["TwoPointConversionReceptions"].to_i * league.rec_2pt
    total = td_score + yards_score + two_pt_score
    total
  end

  def kick_score(stats, league)
    fg_miss = stats["FieldGoalsAttempted"].to_i - stats["FieldGoalsMade"].to_i
    pat_miss = stats["ExtraPointsAttempted"].to_i - stats["ExtraPointsMade"].to_i
    fgmade_score = stats["FieldGoalsMade"].to_i * league.fg_made
    fgmiss_score = (fg_miss * league.fg_missed) + (pat_miss * league.fg_missed)
    patmade_score = stats["ExtraPointsMade"].to_i * league.pat_made
    total = fgmade_score + fgmiss_score + patmade_score
    total
  end

  def kick_td(stats, league)
    kick_stat = stats["KickReturnTouchdowns"]
    kick_rule = league.kick_td
    score = kick_stat * kick_rule
    score
  end

  def fum_td(stats, league)
    fum_stat = stats["FumbleReturnTouchdowns"]
    fum_rule = league.fumb_td
    score = fum_stat * fum_rule
    score    
  end

  def punt_td(stats, league)
    punt_stat = stats["PuntReturnTouchdowns"]
    punt_rule = league.punt_td
    score = punt_stat * punt_rule
    score    
  end

  def int_td(stats, league)
    int_stat = stats["InterceptionReturnTouchdowns"]
    int_rule = league.int_td
    score = int_stat * int_rule
    score
  end

  def block_td(stats, league)
    block_stat = stats["BlockedKickReturnTouchdowns"]
    block_rule = league.block_kick_td
    score = block_stat * block_rule
    score
  end

  def fum_lost(stats, league)
    fum_stat = stats["FumblesLost"]
    fum_rule = league.fumb_lost
    score = fum_stat * fum_rule
    score    
  end

  def misc_score(stats, league)
    kick = kick_td(stats, league)
    fumtd = fum_td(stats, league)
    punt = punt_td(stats, league)
    int = int_td(stats, league)
    block = block_td(stats, league)
    fumlost = fum_lost(stats, league)
    score = kick + fumtd + punt + int + block + fumlost
    score 
  end
end