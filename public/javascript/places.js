window.onload = () => {
    
        // first get current user location
        return navigator.geolocation.getCurrentPosition(function (position) {

                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;

                //window.open("localhost:3000//home_controller/home?latitude="+latitude+"&longitude"+longitude,"self");

                $.ajax({
                    url: "/home/?latitude="+latitude+"&longitude"+longitude,
                    type: "POST",
                    data: values
                });

            (err) => console.error('Error in retrieving position', err),
            {
                enableHighAccuracy: true,
                maximumAge: 0,
                timeout: 27000,
            }
        });
};


