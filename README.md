# IBM-Augmented-Reality-City-Experience    
### Group Members: Aaron Bruce, Ali Al Ali, Mamoke Arubayi, Aran Quintana, Conn Breathnach, Cillian Byrne and Shannon Dent.  


This project is to provide some information on places of interest near the user, which can be accessed through using augmented reality technology on the user's mobile device. This app works best on Chrome on desktop, and Safari on mobile devices. The app is based on Ruby on Rails, and uses AR.JS for the frontend, while receiving location data from the Google Places API.

## You can visit the website on https://161.156.84.1
#### Since the SSL certificate for the website is self-signed, you need to "Accept security risk" when first using the site. You will also need to allow camera and location data to be used for the app's features to function.


## Installation for running locally
To run this website locally you will need
* Ruby version 3.1.1
* Rails version 7.0.2.2

You can then proceed with running the app
* Clone the website from GitHub `git clone https://github.com/Aaron-Bruce/IBM-Augmented-Reality-City-Experience.git`
* Navigate to the app directory `cd IBM-Augmented-Reality-City-Experience`
* Install all gems required by the app `bundle install` (You may need to install bundler first `gem install bundler`)
* You will need to create a Google Places API key for the app to function correctly. Once generated, you can save this key to a file API_KEY.rb in the base directory (IBM-Augmented-Reality-City-Experience/) with the line `KEY = <YOUR-KEY-HERE>`
* Run the server `rails s`
* Visit the website in your browser 127.0.0.1:3000/
