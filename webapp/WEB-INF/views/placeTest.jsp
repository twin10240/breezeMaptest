<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 70%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 50px;
	padding: 0;
}

.controls {
	background-color: #fff;
	border-radius: 2px;
	border: 1px solid transparent;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
	box-sizing: border-box;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	height: 29px;
	margin-left: 17px;
	margin-top: 10px;
	outline: none;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 400px;
}

.controls:focus {
	border-color: #4d90fe;
}

.title {
	font-weight: bold;
}

#infowindow-content {
	display: none;
}

#map #infowindow-content {
	display: inline;
}

div.scrollmenu {
	overflow: auto;
	white-space: nowrap;
}

div.scrollmenu a:hover {
	background-color: #777;
}

.card {
	display: inline-block;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	text-align: center;
	padding: 0 30px;
	text-decoration: none;
}
</style>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
var service;

function initMap() {
	  var map = new google.maps.Map(document.getElementById('map'), {
	    center: {lat: -33.8688, lng: 151.2195},
	    zoom: 13
	  });

	  var input = document.getElementById('pac-input');
		
	  // 검색 박스
	  var searchBox = new google.maps.places.SearchBox(input);
	  map.addListener('bounds_changed', function() {
		    searchBox.setBounds(map.getBounds());
	  });
	  
	  // 자동완성
	  var autocomplete = new google.maps.places.Autocomplete(input);
	  autocomplete.bindTo('bounds', map);
	  
	  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
	  
	  var infowindow = new google.maps.InfoWindow();
	  var marker = new google.maps.Marker({
	    map: map
	  });
	  
	  marker.addListener('click', function() {
		infowindow.open(map, marker);
	  });

	  autocomplete.addListener('place_changed', function() {
	    infowindow.close();
	    var place = autocomplete.getPlace();
	    console.log(place.name);
	    
	    $.ajax({
			url: "/breezetest/api/search/nearby",
			type: "post",
			dataType: "json",
			data: "location=" + place.name,
			success: function( response ) {
				if( response.result != "success" ) {
					console.log( response.message );
					return;
				}
							
				$.each(response.data, function(index, data){
					$(".scrollmenu").empty();
					
					render( data );
				});
			}
		});
	    
	    if (!place.geometry) {
	      return;
	    }

	    if (place.geometry.viewport) {
	      map.fitBounds(place.geometry.viewport);
	    } else {
	      map.setCenter(place.geometry.location);
	      map.setZoom(17);
	    }

	    // Set the position of the marker using the place ID and location.
	    marker.setPlace({
	      placeId: place.place_id,
	      location: place.geometry.location
	    });
	    marker.setVisible(true);

	    document.getElementById('place-name').textContent = place.name;
	    document.getElementById('place-id').textContent = place.place_id;
	    document.getElementById('place-address').textContent = place.formatted_address;
	    infowindow.setContent(document.getElementById('infowindow-content'));
	    infowindow.open(map, marker);
	  });
	  
	  var markers = [];
	  // Listen for the event fired when the user selects a prediction and retrieve
	  // more details for that place.
	  searchBox.addListener('places_changed', function() {
	    var places = searchBox.getPlaces();

	    if (places.length == 0) {
	      return;
	    }

	    // Clear out the old markers.
	    markers.forEach(function(marker) {
	      marker.setMap(null);
	    });
	    markers = [];

	    // For each place, get the icon, name and location.
	    var bounds = new google.maps.LatLngBounds();
	    places.forEach(function(place) {
	      if (!place.geometry) {
	        console.log("Returned place contains no geometry");
	        return;
	      }
	      var icon = {
	        url: place.icon,
	        size: new google.maps.Size(71, 71),
	        origin: new google.maps.Point(0, 0),
	        anchor: new google.maps.Point(17, 34),
	        scaledSize: new google.maps.Size(25, 25)
	      };

	      // Create a marker for each place.
	      markers.push(new google.maps.Marker({
	        map: map,
	        icon: icon,
	        title: place.name,
	        position: place.geometry.location
	      }));

	      if (place.geometry.viewport) {
	        // Only geocodes have viewport.
	        bounds.union(place.geometry.viewport);
	      } else {
	        bounds.extend(place.geometry.location);
	      }
	    });
	    map.fitBounds(bounds);
	  });
	  
}

var render = function( data ) {
	console.log(data);
	var html = 
		"<div class='card'>" +
			"<img src='${pageContext.request.contextPath }/assets/images/pic1.jpg' alt='John' style='width: 100%'>" +
			"<h2>"+ data.userId +"</h2>" +
			"<p class='title'>" + data.content + "</p>" +
			"<p>lat: "+ data.lat +", lot : "+ data.lot +"</p>" + 
		"</div>";
		
	$(".scrollmenu").append(html);
}
	
var curr_location = function() {
	// 현재 내 위치
	var infoWindow = new google.maps.InfoWindow({map : map});

	// Try HTML5 geolocation.
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(position) {
			var pos = {
				lat : position.coords.latitude,
				lng : position.coords.longitude
			};

			infoWindow.setPosition(pos);
			infoWindow.setContent('Location found.');
			map.set
			map.setCenter(pos);
		}, function() {
			handleLocationError(true, infoWindow, map.getCenter());
		});
	} else {
		// Browser doesn't support Geolocation
		handleLocationError(false, infoWindow, map.getCenter());
	}
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	  infoWindow.setPosition(pos);
	  infoWindow.setContent(browserHasGeolocation ?
	                        'Error: The Geolocation service failed.' :
	                        'Error: Your browser doesn\'t support geolocation.');
}

</script>

</head>
<body>
	<input id="pac-input" class="controls" type="text"
		placeholder="Enter a location">

	<div id="map"></div>
	<div id="infowindow-content">
		<span id="place-name" class="title"></span> <br> Place ID <span
			id="place-id"></span> <br> <span id="place-address"></span>
	</div>

	<br>
	<br>

	<div class="scrollmenu">

		<%-- <c:forEach var="i" begin="1" end="10">
			<div class="card">
				<img src="${pageContext.request.contextPath }/assets/images/pic${i }.jpg" alt="John" style="width: 100%">
				<h1>John Doe</h1>
				<p class="title">CEO & Founder, Example</p>
				<p>Harvard University</p>
				<!-- <p> <button>More...</button> s</p> -->
			</div>
		</c:forEach> --%>

	</div>

	<br>
	<br>
	<br>

	<!-- Replace the value of the key parameter with your own API key. -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6s8eAHp3wLMJsJ9lPew0fD2aPANMe60&libraries=places&callback=initMap"
		async defer></script>
</body>
</html>