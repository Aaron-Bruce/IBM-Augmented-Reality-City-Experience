
        // first get current user location
 navigator.geolocation.getCurrentPosition(function (position) {

    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
                window.open("/home?latitude="+latitude+"&longitude"+longitude,"self");

                //$.ajax({
                //    url: "/home/?latitude="+latitude+"&longitude"+longitude,
                //    type: "POST",
                //    data: values
               // });
});


