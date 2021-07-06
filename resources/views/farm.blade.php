@extends('layouts.layout')

@section('content')

<!-- Page Heading -->
<!-- <h1 class="h3 mb-4 text-gray-800">Farm Page</h1> -->
<!-- Basic Card Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Farm Page</h6>
    </div>
    <div class="card-body">
        <!-- The styling for this basic card example is created by using default Bootstrap
        utility classes. By using utility classes, the style of the card component can be
        easily modified with no need for any custom CSS! -->
        <div id="mapcanvas_container">
            <div id="mapcanvas" style="width:100%;height:600px;">
                map
            </div>
        </div>

        
    </div>
</div>

<script>
function myMap() {
    var mapProp= {
        center: new google.maps.LatLng(13.855716, 100.501589),
        zoom:6,
    };
    var map = new google.maps.Map(document.getElementById("mapcanvas"),mapProp);

    $.get("/apiv1", function(data, status){

        let length = data.length;

        for(let i = 0; i< length; i++) {
            let myLatLng = { lat: data[i].latitude, lng: data[i].longtitude };
            new google.maps.Marker({
                position: myLatLng,
                map,
                title: data[i].province_name,
            });
        }
        
    });

}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key={{ $google_api_key }}&callback=myMap"></script>
@endsection
