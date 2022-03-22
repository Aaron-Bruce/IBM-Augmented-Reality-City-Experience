class HomeController < ApplicationController
  def home
    @locations = [
      {
        "business_status": "OPERATIONAL",
        "geometry":
          {
            "location": { "lat": -33.8587323, "lng": 151.2100055 },
            "viewport":
              {
                "northeast":
                  { "lat": -33.85739817010727, "lng": 151.2112278798927 },
                "southwest":
                  { "lat": -33.86009782989272, "lng": 151.2085282201073 },
              },
          },
        "icon": "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/bar-71.png",
        "icon_background_color": "#FF9E67",
        "icon_mask_base_uri": "https://maps.gstatic.com/mapfiles/place_api/icons/v2/bar_pinlet",
        "name": "Cruise Bar",
        "opening_hours": { "open_now": false },
        "photos":
          [
            {
              "height": 575,
              "html_attributions":
                [
                  '<a href="https://maps.google.com/maps/contrib/112582655193348962755">A Google User</a>',
                ],
              "photo_reference": "Aap_uEDnz_WTtjeSoT06mpN-Yr6NuNoGVip9P74POPIyhLv0Kvr-GORZFWiSGCAf1UnQN29IElWm3J3_KyFw1zUd7IHkVTDDjcjtMp9vQkupTQt0b-BsKLvC6MotMONrakPg4g0Nb-lzhVp8znaorp3klzcdoZJjgamJXZZn6strL82BOIxG",
              "width": 766,
            },
          ],
        "place_id": "ChIJi6C1MxquEmsR9-c-3O48ykI",
        "plus_code":
          {
            "compound_code": "46R6+G2 The Rocks, New South Wales",
            "global_code": "4RRH46R6+G2",
          },
        "price_level": 2,
        "rating": 4.1,
        "reference": "ChIJi6C1MxquEmsR9-c-3O48ykI",
        "scope": "GOOGLE",
        "types":
          ["bar", "restaurant", "food", "point_of_interest", "establishment"],
        "user_ratings_total": 1184,
        "vicinity": "Level 1, 2 and 3, Overseas Passenger Terminal, Circular Quay W, The Rocks",
      },
      {
        "business_status": "OPERATIONAL",
        "geometry":
          {
            "location": { "lat": -33.8675219, "lng": 151.2016502 },
            "viewport":
              {
                "northeast":
                  { "lat": -33.86615722010728, "lng": 151.2029972798927 },
                "southwest":
                  { "lat": -33.86885687989272, "lng": 151.2002976201072 },
              },
          },
        "icon": "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png",
        "icon_background_color": "#7B9EB0",
        "icon_mask_base_uri": "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_pinlet",
        "name": "Sydney Harbour Dinner Cruises",
        "opening_hours": { "open_now": false },
        "photos":
          [
            {
              "height": 749,
              "html_attributions":
                [
                  '<a href="https://maps.google.com/maps/contrib/109764923610545394994">A Google User</a>',
                ],
              "photo_reference": "Aap_uEAwz7yKBwe_TCgQybaDURKMwb6Y9OKhoeERGN1Ziqs5KzsQGwBYfdfwCqV8GdEfUAvb_PhQrvYpivvqvSg1rfGr4_CXiTuD2fH5-NYCyJLSYStDVy9ND7Ozo_s0vcWwAhhG2eyOixnyDW7LRCQZoJEs1nt1AG5L-AZpNY04k8CI0qr_",
              "width": 1000,
            },
          ],
        "place_id": "ChIJM1mOVTS6EmsRKaDzrTsgids",
        "plus_code":
          {
            "compound_code": "46J2+XM Sydney, New South Wales",
            "global_code": "4RRH46J2+XM",
          },
        "rating": 4.7,
        "reference": "ChIJM1mOVTS6EmsRKaDzrTsgids",
        "scope": "GOOGLE",
        "types":
          [ "tourist_attraction",
            "travel_agency",
            "restaurant",
            "food",
            "point_of_interest",
            "establishment",
          ],
        "user_ratings_total": 6,
        "vicinity": "32 The Promenade, Sydney",
      }
    ]
  end
end
