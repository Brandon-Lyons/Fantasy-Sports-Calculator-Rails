require 'net/http'
require 'json'
module Interface


  def api_call(url, type, team = nil)
    uri = URI(url)

    uri.query = URI.encode_www_form({
      'key' => '1dca78d0-2f19-4954-863a-338f4f2ab105',
      })

    request = Net::HTTP::Get.new(uri.request_uri)

    response = Net::HTTP::start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
    end

    if type == "player"
      profile = JSON.parse(response.body)
      profile
    else
      profile = JSON.parse(response.body)
      hash = profile.select{|key, hash| key["Team"] == team.abbr_name }.first
      hash
    end
  end


  def player_profile(player_id)
   url = "http://api.nfldata.apiphany.com/developer/JSON/Player/#{player_id}"
   api_call(url, "player")
  end

  def player_stats(year, week, player_id)
    if year.empty? || week.empty?
      stats = {"error" => "A year or week is needed to calculate."}
    else
      uri = URI("http://api.nfldata.apiphany.com/developer/JSON/PlayerGameStatsByPlayerID/#{year}/#{week}/#{player_id}")

      uri.query = URI.encode_www_form({
        'key' => '1dca78d0-2f19-4954-863a-338f4f2ab105',
        })

      request = Net::HTTP::Get.new(uri.request_uri)

      response = Net::HTTP::start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request(request)
      end

      if response.body.empty?
        stats = {"error" => "Sorry there are no stats to show! Please go back and enter a valid week and/or year. This sometimes happens if the player is on a bye week."}
      else
        stats = JSON.parse(response.body)
      end
    end

    stats
  end

  def profile_team(team)      
    url = "http://api.nfldata.apiphany.com/developer/JSON/FantasyDefenseBySeason/#{Time.now.year - 1}"
    api_call(url, "team", team)
  end

  def stats_team(year, week, team)
    require 'net/http'
      
    uri = URI("http://api.nfldata.apiphany.com/developer/JSON/FantasyDefenseByGame/#{year}/#{week}") 
      
    uri.query = URI.encode_www_form({ 
        'key' => '1dca78d0-2f19-4954-863a-338f4f2ab105', 
    }) 
      
    request = Net::HTTP::Get.new(uri.request_uri) 
      
    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http| 
        http.request(request) 
    end
      
    stats = JSON.parse(response.body)
    hash = stats.select{|key, hash| key["Team"] == team.abbr_name }.first
    hash
  end

end