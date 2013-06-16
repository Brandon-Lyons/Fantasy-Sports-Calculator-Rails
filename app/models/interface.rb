require 'net/http'
require 'json'
module Interface


  def player_profile(player_id)
    uri = URI("http://api.nfldata.apiphany.com/trial/JSON/Player/#{player_id}")

    uri.query = URI.encode_www_form({
      'key' => 'fbc568ac-614d-4eae-9031-926a36e3b3bd',
      })

    request = Net::HTTP::Get.new(uri.request_uri)

    response = Net::HTTP::start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
    end

    profile = JSON.parse(response.body)

    profile

  end

  def player_stats(year, week, player_id)
    uri = URI("http://api.nfldata.apiphany.com/trial/JSON/PlayerGameStatsByPlayerID/#{year}/#{week}/#{player_id}")

    uri.query = URI.encode_www_form({
      'key' => 'fbc568ac-614d-4eae-9031-926a36e3b3bd',
      })

    request = Net::HTTP::Get.new(uri.request_uri)

    response = Net::HTTP::start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
    end

    stats = JSON.parse(response.body)

    stats
  end

end