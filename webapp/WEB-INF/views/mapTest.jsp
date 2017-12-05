<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#map {
        width: 100%;
        height: 400px;
        background-color: grey;
      }
</style>

<script type="text/javascript">
function initMap() {
	  var uluru = {lat: -25.363, lng: 131.044};
	  var map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 4,
	    center: uluru
	  });
	  var marker = new google.maps.Marker({
	    position: uluru,
	    map: map
	  });
	}
</script>

</head>
<body>

<h3>My Google Maps Demo</h3>
<div id="map"></div>

 <!-- Replace the value of the key parameter with your own API key. -->
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwjNMWqleV4QUjqrCj4w3eiymnZbji6sc&callback=initMap">
</script>

</body>
</html>