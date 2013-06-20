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
    total = pass + rush + rec
    total
  end

  def pass_score(stats, league)
    td = stats["PassingTouchdowns"].to_i
    yards = stats["PassingYards"].to_i
    int = stats["PassingInterceptions"].to_i
    two_pt = stats["TwoPointConversionPasses"].to_i
    td_rule = league.pass_td
    yard_rule = league.pass_yards
    int_rule = league.int
    two_pt_rule = league.pass_2pt
    td_score = td * td_rule
    yards_score = (yards / 25) * yard_rule
    int_score = int * int_rule
    two_pt_score = two_pt * two_pt_rule
    total = td_score + yards_score + two_pt_score + int_score
    total
  end

  def rush_score(stats, league)
    td = stats["RushingTouchdowns"].to_i
    yards = stats["RushingYards"].to_i
    two_pt = stats["TwoPointConversionRuns"].to_i
    td_rule = league.rush_td
    yard_rule = league.rush_yards
    two_pt_rule = league.rush_2pt
    td_score = td * td_rule
    yards_score = (yards / 10) * yard_rule
    two_pt_score = two_pt * two_pt_rule
    total = td_score + yards_score + two_pt_score
    total
  end

  def rec_score(stats, league)
    td = stats["ReceivingTouchdowns"].to_i
    yards = stats["ReceivingYards"].to_i
    two_pt = stats["TwoPointConversionReceptions"].to_i
    td_rule = league.rec_td
    yard_rule = league.rec_yards
    two_pt_rule = league.rec_2pt
    td_score = td * td_rule
    yards_score = (yards / 10) * yard_rule
    two_pt_score = two_pt * two_pt_rule
    total = td_score + yards_score + two_pt_score
    total
  end
end