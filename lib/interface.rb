require 'net/http'
require 'json'
module Interface


  def player_profile(player_id)
    uri = URI("http://api.nfldata.apiphany.com/developer/JSON/Player/#{player_id}")

    uri.query = URI.encode_www_form({
      'key' => '1dca78d0-2f19-4954-863a-338f4f2ab105',
      })

    request = Net::HTTP::Get.new(uri.request_uri)

    response = Net::HTTP::start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
    end

    profile = JSON.parse(response.body)

    profile

  end

  def player_stats(year, week, player_id)
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

    stats
  end

end