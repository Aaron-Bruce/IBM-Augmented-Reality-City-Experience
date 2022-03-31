require "uri"
require "json"
require "net/http"
require_relative "../../API_KEY.rb"
class HomeController < ApplicationController
  def home
    if(params[:longitude].present? && params[:latitude].present?)
      longitude = params[:longitude]
      latitude = params[:latitude]
      longitude.to_s
      latitude.to_s
      puts "data update"
      puts latitude
      puts longitude
      uri_string = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude},#{longitude}&radius=750&key=#{KEY}"
      puts uri_string
      url = URI(uri_string)

      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true

      request = Net::HTTP::Get.new(url)

      response = https.request(request)

      data = JSON.parse(response.read_body)
      puts data
      @locations = data["results"]
      render :no_content
    else
      @locations = {}
    end
  #puts longitude
  #puts latitude
  #puts @locations["geometry"]["location"]["lat"]
  end

  def data_update
    longitude = params[:longitude]
    latitude = params[:latitude]
    longitude.to_s
    latitude.to_s
    puts "data update"
    puts latitude
    puts longitude
    uri_string = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude},#{longitude}&radius=750&key=#{KEY}"
    puts uri_string
    url = URI(uri_string)

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)

    response = https.request(request)

    data = JSON.parse(response.read_body)
    puts data
    @locations = data["results"]
    render :no_content
  end
end
