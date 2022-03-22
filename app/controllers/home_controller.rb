#Retrieving a list of spots
#Retrieve spot with latittude and longitude:
#@client.spots(-33.8670522, 151.1957362)
#Retrieve spot with specific type:
#@client.spots(-33.8670522, 151.1957362, :types => 'restaurant')
#Retrieve spot with multiple types:
#@client.spots(-33.8670522, 151.1957362, :types => ['restaurant','food'])
#Search by multiple types but exclude multiple types:
#@client.spots(-33.8670522, 151.1957362, :types => ['restaurant','food'], :exclude => ['cafe', 'establishment'])
#Search by name:
#@client.spots(-33.8670522, 151.1957362, :name => 'italian')
#Search by name and type:
#@client.spots(-33.8670522, 151.1957362, :name => 'italian', :types => 'restaurant')
#Search in a radius (in meters):
#@client.spots(-33.8670522, 151.1957362, :radius => 100)
#Get results in specific language:
#@client.spots(-33.8670522, 151.1957362, :language => 'en')
#Retrieving spots based on query
#@client.spots_by_query('Pizza near Miami Florida')
#Search by multiple types and exclude multiple types
#@client.spots_by_query('Pizza near Miami Florida', :types => ['restaurant', 'food'], :exclude => ['cafe', 'establishment'])

class HomeController < ApplicationController
  def home
  end
end
