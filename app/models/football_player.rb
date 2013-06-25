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
    total = pass + rush + rec + kick
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
end