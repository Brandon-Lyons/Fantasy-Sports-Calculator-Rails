class AddKickingScoring < ActiveRecord::Migration

  def change
    add_column(:football_leagues, :fg_made, :integer, :default => 3)
    add_column(:football_leagues, :fg_missed, :integer, :default => -1)
    add_column(:football_leagues, :pat_made, :integer, :default => 1)
  end

end