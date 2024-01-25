require 'uri'
require 'net/http'

class WeatherService
  def self.call(latitude, longitude)
    url = URI("https://api.tomorrow.io/v4/weather/forecast?location=#{latitude},#{longitude}&apikey=#{ENV['TOMORROW_IO_API_KEY']}")
    puts url

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["accept"] = 'application/json'

    response = http.request(request)
    JSON.parse(response.read_body)
  end


  def self.celsius_fahrenheit(c)
    c * 9 / 5 + 32
  end
end
