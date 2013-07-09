class CreateAndPopulateFootballTeamsTable < ActiveRecord::Migration

  def change
    create_table :football_teams do |t|
      t.string :full_name
      t.string :abbr_name
      t.string :photo
    end
  end
end