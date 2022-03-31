
        // first get current user location
 navigator.geolocation.getCurrentPosition(function (position) {

    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
     $.ajax({
         type:"POST",
         url:"home/data_update",
         dataType:"json",
         data: {"latitude": latitude, "longitude": longitude}
     })
                // window.open("/data_update?latitude="+latitude+"&longitude="+longitude,"self");

                //$.ajax({
                //    url: "/home/?latitude="+latitude+"&longitude"+longitude,
                //    type: "POST",
                //    data: values
               //});
});


