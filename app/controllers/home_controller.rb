require "uri"
require "json"
require "net/http"
require_relative "../../API_KEY.rb"
class HomeController < ApplicationController
  def home
    # Only run first block if longitude and latitude data has been passed (website needs to load then redirect to allow camera to get GPS first time)
    if(params[:longitude].present? && params[:latitude].present?)
      longitude = params[:longitude]
      latitude = params[:latitude]
      longitude.to_s
      latitude.to_s
      puts "data update"
      puts latitude
      puts longitude
      radius = 50
      #Use latitude and longitude to get data in radius, use Google Places API key from API_KEY.rb (not included in git)
      uri_string = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude},#{longitude}&radius=#{radius}&key=#{KEY}"
      puts uri_string
      url = URI(uri_string)

      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true # Streaming user location and camera data requires https for ar.js/aframe

      request = Net::HTTP::Get.new(url)

      response = https.request(request)

      data = JSON.parse(response.read_body)
      @locations = data["results"]
      puts "locations = "
      puts @locations
      render '_marker'
    else
      #Run this code first time page is loaded
      @locations = {}
      puts "first locations = "
      puts @locations
      render 'home'
    end
    #puts longitude
    #puts latitude
    #puts @locations["geometry"]["location"]["lat"]
  end
end