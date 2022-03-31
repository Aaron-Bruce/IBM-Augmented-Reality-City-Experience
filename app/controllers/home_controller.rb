require "uri"
require "json"
require "net/http"
require_relative "../../API_KEY.rb"
class HomeController < ApplicationController
  def home
  longitude = params[:longitude]
  latitude = params[:latitude]
  longitude.to_s
  latitude.to_s
  uri_string = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=53.3444407%2C-6.2595753&radius=750&type=restaurant&key=#{KEY}"
  url = URI(uri_string)

  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true

  request = Net::HTTP::Get.new(url)

  response = https.request(request)
  data = JSON.parse(response.read_body)
  @locations = data["results"]
  puts longitude
  puts latitude
  #puts @locations["geometry"]["location"]["lat"]
  end
end
