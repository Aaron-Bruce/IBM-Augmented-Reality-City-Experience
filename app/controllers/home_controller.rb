class HomeController < ApplicationController
  def home
  require "uri"
  require "json"
  require "net/http"

  url = URI("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=53.3444407%2C-6.2595753&radius=750&type=restaurant&key=YOUR_KEY_HERE")

  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true

  request = Net::HTTP::Get.new(url)

  response = https.request(request)
  puts response.read_body
  @data = JSON.parse(response.read_body)
  end
end
