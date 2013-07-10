class CreateMiscDefenseColumns < ActiveRecord::Migration
    def change
      add_column(:football_leagues, :kick_td, :integer, :default => 6)
      add_column(:football_leagues, :punt_td, :integer, :default => 6)
      add_column(:football_leagues, :int_td, :integer, :default => 6)
      add_column(:football_leagues, :block_kick_td, :integer, :default => 6)
      add_column(:football_leagues, :fumb_td, :integer, :default => 6)
      add_column(:football_leagues, :fumb_lost, :integer, :default => -2)
      add_column(:football_leagues, :def_int, :integer, :default => 2)
      add_column(:football_leagues, :def_fumb, :integer, :default => 2)
      add_column(:football_leagues, :def_block_kick, :integer, :default => 2)
      add_column(:football_leagues, :def_sack, :integer, :default => 1)
      add_column(:football_leagues, :def_safety, :integer, :default => 2)
      add_column(:football_leagues, :pts_all_0, :integer, :default => 5)
      add_column(:football_leagues, :pts_all_6, :integer, :default => 4)
      add_column(:football_leagues, :pts_all_13, :integer, :default => 3)
      add_column(:football_leagues, :pts_all_17, :integer, :default => 1)
      add_column(:football_leagues, :pts_all_34, :integer, :default => -1)
      add_column(:football_leagues, :pts_all_45, :integer, :default => -3)
      add_column(:football_leagues, :pts_all_46, :integer, :default => -5) 
    end

end