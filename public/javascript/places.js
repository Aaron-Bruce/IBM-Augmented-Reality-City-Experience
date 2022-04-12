navigator.geolocation.getCurrentPosition(function (position) {
    //Reload page with new url only if no location is set
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    console.log(latitude);
    console.log(longitude);
    if (window.location.href.indexOf("?") == -1) {
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;
        // HTTP GET call to backend to load places API and populate @locations
        $.ajax({
            type:"GET",
            url:"home/",
            dataType:"json",
            data: {"latitude": latitude, "longitude": longitude}
        });
        // Change current URL so that this script isn't run again (kind of hacky, but nothing else really worked)
        window.location.href = window.location.href + "?latitude=" + latitude + "&longitude=" + longitude;
    }




});

    // var latitude = position.coords.latitude;
    // var longitude = position.coords.longitude;
    //  $.ajax({
    //      type:"GET",
    //      url:"home/",
    //      dataType:"json",
    //      data: {"latitude": latitude, "longitude": longitude}
    //  })
    //             // window.open("/data_update?latitude="+latitude+"&longitude="+longitude,"self");

                //$.ajax({
                //    url: "/home/?latitude="+latitude+"&longitude"+longitude,
                //    type: "POST",
                //    data: values
               //});
// });




