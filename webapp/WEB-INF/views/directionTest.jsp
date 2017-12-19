<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#floating-panel {
	position: absolute;
	top: 10px;
	left: 25%;
	z-index: 5;
	background-color: #fff;
	padding: 5px;
	border: 1px solid #999;
	text-align: center;
	font-family: 'Roboto', 'sans-serif';
	line-height: 30px;
	padding-left: 10px;
}
</style>
</head>
<!-- 구글 맵 호출 -->
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6s8eAHp3wLMJsJ9lPew0fD2aPANMe60&callback=initMap"></script>
<script type="text/javascript">
	function initMap() {
		var directionsService = new google.maps.DirectionsService;
		var directionsDisplay = new google.maps.DirectionsRenderer;
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 7,
			center : {
				lat : 41.85,
				lng : -87.65
			}
		});
		directionsDisplay.setMap(map);

		/* var onChangeHandler = function() {
			calculateAndDisplayRoute(directionsService, directionsDisplay);
		};
		
		document.getElementById('start').addEventListener('change', onChangeHandler);
		document.getElementById('end').addEventListener('change', onChangeHandler);
		
		document.getElementById('mode').addEventListener('change', function() {
		    calculateAndDisplayRoute(directionsService, directionsDisplay);
	  	});
		
		document.getElementById('waypoints').addEventListener('change', function() {
		    calculateAndDisplayRoute(directionsService, directionsDisplay);
	  	}); */
		
		document.getElementById('submit').addEventListener('click', function() {
		    calculateAndDisplayRoute(directionsService, directionsDisplay);
		});
	}

	function calculateAndDisplayRoute(directionsService, directionsDisplay) {
		console.log(directionsService);
		console.log(directionsDisplay);
		
		var selectedMode = document.getElementById('mode').value;
		
	 	var waypts = [];
	  	var checkboxArray = document.getElementById('waypoints');
	  	for (var i = 0; i < checkboxArray.length; i++) {
	  	    if (checkboxArray.options[i].selected) {
	  	      waypts.push({
	  	        location: checkboxArray[i].value,
	  	        stopover: true
	  	      });
	  	    }
	  	}
		
		directionsService.route({
			/* origin : document.getElementById('start').value,
			destination : document.getElementById('end').value, */
			origin : {lat: 41.879193, lng: -87.626298},
			/* destination : {lat: 41.706621, lng: -86.888232}, */
			destination : waypts[waypts.length - 1],
			waypoints: waypts,
		    optimizeWaypoints: true,
			travelMode : google.maps.TravelMode[selectedMode]
		}, function(response, status) {
			if (status === 'OK') {
				directionsDisplay.setDirections(response);
			} else {
				window.alert('Directions request failed due to ' + status);
			}
		});
	}
</script>

<body>
	<h3>Direction Test</h3>

	<div id="floating-panel">
		<b>Start: </b> 
		<select id="start">
			<option value="chicago, il">Chicago</option>
			<!--  
			<option value="st louis, mo">St Louis</option>
			<option value="joplin, mo">Joplin, MO</option>
			<option value="oklahoma city, ok">Oklahoma City</option>
			<option value="amarillo, tx">Amarillo</option>
			<option value="gallup, nm">Gallup, NM</option>
			<option value="flagstaff, az">Flagstaff, AZ</option>
			<option value="winona, az">Winona</option>
			<option value="kingman, az">Kingman</option>
			<option value="barstow, ca">Barstow</option>
			<option value="san bernardino, ca">San Bernardino</option>
			<option value="los angeles, ca">Los Angeles</option>
			-->
		</select> 
		
		<br> 
		
		<b>Waypoints:</b> 
		<i>(Ctrl+Click or Cmd+Click for multiple selection)</i> 
		
		<br> 
		
		<select multiple id="waypoints">
			<option value="st louis, mo">St Louis</option>
			<option value="joplin, mo">Joplin, MO</option>
			<option value="oklahoma city, ok">Oklahoma City</option>
			<option value="amarillo, tx">Amarillo</option>
			<option value="gallup, nm">Gallup, NM</option>
			<option value="flagstaff, az">Flagstaff, AZ</option>
			<option value="winona, az">Winona</option>
			<option value="kingman, az">Kingman</option>
			<option value="barstow, ca">Barstow</option>
			<option value="san bernardino, ca">San Bernardino</option>
		</select> 
		
		<br> 
		
		<b>End: </b> 
		<select id="end">
			<!--  
			<option value="chicago, il">Chicago</option>
			<option value="st louis, mo">St Louis</option>
			<option value="joplin, mo">Joplin, MO</option>
			<option value="oklahoma city, ok">Oklahoma City</option>
			<option value="amarillo, tx">Amarillo</option>
			<option value="gallup, nm">Gallup, NM</option>
			<option value="flagstaff, az">Flagstaff, AZ</option>
			<option value="winona, az">Winona</option>
			<option value="kingman, az">Kingman</option>
			<option value="barstow, ca">Barstow</option>
			<option value="san bernardino, ca">San Bernardino</option>
			-->
			<option value="los angeles, ca">Los Angeles</option>
		</select> 
		
		<br> 
		
		<b>Mode of Travel: </b> 
		s<select id="mode">
			<option value="DRIVING">Driving</option>
			<option value="WALKING">Walking</option>
			<option value="BICYCLING">Bicycling</option>
			<option value="TRANSIT">Transit</option>
		</select>
		
		<input type="submit" id="submit">
	</div>

	<div id="map"></div>
</body>
</html>