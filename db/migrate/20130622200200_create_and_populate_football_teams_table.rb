class CreateAndPopulateFootballTeamsTable < ActiveRecord::Migration

  def change
    create_table :football_teams do |t|
      t.string :full_name
      t.string :abbr_name
    end

    FootballTeam.create(full_name: "Arizona Cardinals", abbr_name: "ARI")
    FootballTeam.create(full_name: "Atlanta Falcons", abbr_name: "ATL")
    FootballTeam.create(full_name: "Baltimore Ravens", abbr_name: "BAL")
    FootballTeam.create(full_name: "Buffalo Bills", abbr_name: "BUF")
    FootballTeam.create(full_name: "Carolina Panthers", abbr_name: "CAR")
    FootballTeam.create(full_name: "Chicago Bears", abbr_name: "CHI")
    FootballTeam.create(full_name: "Cincinnati Bengals", abbr_name: "CIN")
    FootballTeam.create(full_name: "Cleveland Browns", abbr_name: "CLE")
    FootballTeam.create(full_name: "Dallas Cowboys", abbr_name: "DAL")
    FootballTeam.create(full_name: "Denver Broncos", abbr_name: "DEN")
    FootballTeam.create(full_name: "Detroit Lions", abbr_name: "DET")
    FootballTeam.create(full_name: "Green Bay Packers", abbr_name: "GB")
    FootballTeam.create(full_name: "Houston Texans", abbr_name: "HOU")
    FootballTeam.create(full_name: "Indianapolis Colts", abbr_name: "IND")
    FootballTeam.create(full_name: "Jacksonville Jaguars", abbr_name: "JAX")
    FootballTeam.create(full_name: "Kansas City Chiefs", abbr_name: "KC")
    FootballTeam.create(full_name: "Miami Dolphins", abbr_name: "MIA")
    FootballTeam.create(full_name: "Minnesota Vikings", abbr_name: "MIN")
    FootballTeam.create(full_name: "New England Patriots", abbr_name: "NE")
    FootballTeam.create(full_name: "New Orleans Saints", abbr_name: "NO")
    FootballTeam.create(full_name: "New York Giants", abbr_name: "NYG")
    FootballTeam.create(full_name: "New York Jets", abbr_name: "NYJ")
    FootballTeam.create(full_name: "Oakland Raiders", abbr_name: "OAK")
    FootballTeam.create(full_name: "Philadelphia Eagles", abbr_name: "PHI")
    FootballTeam.create(full_name: "Pittsburgh Steelers", abbr_name: "PIT")
    FootballTeam.create(full_name: "St. Louis Rams", abbr_name: "STL")
    FootballTeam.create(full_name: "San Diego Chargers", abbr_name: "SD")
    FootballTeam.create(full_name: "San Francisco 49ers", abbr_name: "SF")
    FootballTeam.create(full_name: "Seattle Seahawks", abbr_name: "SEA")
    FootballTeam.create(full_name: "Tampa Bay Buccaneers", abbr_name: "TB")
    FootballTeam.create(full_name: "Tennessee Titans", abbr_name: "TEN")
    FootballTeam.create(full_name: "Washington Redskins", abbr_name: "WAS")
  end
end