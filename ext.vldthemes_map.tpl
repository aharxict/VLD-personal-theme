<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
<script type="text/javascript">
    
  var markers = new  Array();
  var i = 0;
  var usermap;
  
  var userCoords = {vldthemes:a="geoGet"};
  
  function geoFindMe() {
    var output = document.getElementById("out");

    if (!navigator.geolocation){
      output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
      return;
    }

    function success(position) {
      var latitude  = position.coords.latitude;
      var longitude = position.coords.longitude;

      output.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';
      $.post(virpath+'index.php?a=start&t=geo_save',{"lat": latitude, "lon": longitude});


    };

    function error() {
      output.innerHTML = "Unable to retrieve your location";
    };

    output.innerHTML = "<p>Locating…</p>";

    navigator.geolocation.getCurrentPosition(success, error);
}
    
    
     var image = {
        url: 'images/beachflag.png',
        size: new google.maps.Size(50, 50),
        origin: new google.maps.Point(0,0),
        anchor: new google.maps.Point(0, 50)
     };

    var shape = {
        coords: [1, 1, 1, 50, 50, 50, 50 , 1],
        type: 'poly'
    };
    

    function addMarker(data,lat,lon) {
      i++;
     
      // shift lat & lon a bit to avoid overlays
      
      lat = lat +Math.random()/3; 
      lon = lon +Math.random()/3 ;
      
      
      currentimage = image;
      currentimage.url = data.image;
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(lat, lon),
        map: usermap,
        icon: currentimage,
        shape: shape,
        title: data.username
      });
      
            
        google.maps.event.addListener(marker, 'click', function() {
             document.location = virpath+'member/'+marker.getTitle();
       });
       markers[i] = marker;
    }
    
    function addMarkerCenter(data,lat,lon) {
      i++;
      currentimage = image;
      currentimage.url = data.image;
      var marker = new google.maps.Marker({
            position: new google.maps.LatLng(lat, lon),
            map: usermap,
            icon: currentimage,
            shape: shape,
            title: data.username
          });
          
       usermap.setCenter(new google.maps.LatLng(lat,lon));
        google.maps.event.addListener(marker, 'click', function() {
             document.location = virpath+'member/'+marker.getTitle();
       });
       
        markers[i] = marker;
    }
   

   
   
    function initialize() {
        
       var myStyle = [
     {
         featureType: "poi",
         elementType: "labels",
         stylers: [
           { visibility: "off" }
         ]
       },{
         featureType: "water",
         elementType: "labels",
         stylers: [
           { visibility: "off" }
         ]
       },{
         featureType: "road",
         elementType: "labels",
         stylers: [
           { visibility: "off" }
         ]
       }
     ];
 
        
        
        
      var mapOptions = {
        zoom: 9,
        center: new google.maps.LatLng(userCoords.lat, userCoords.lon),
        mapTypeId: 'mystyle'
      };

     usermap = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
     usermap.mapTypes.set('mystyle', new google.maps.StyledMapType(myStyle, { name: 'My Style' }));

      google.maps.event.addListenerOnce(usermap, 'idle', function(){
       addUserMarkers();
    });
   
  }

    if($(window).width() > 700) {
      google.maps.event.addDomListener(window, 'load', initialize);
    }
           
   function addUserMarkers() {

         <!-- BEGIN vldthemes_map -->
             <!-- IF member_id == session.member_id -->

             <!-- ELSE -->
              addMarker({ id : {member_id}, image: '{top.virtual_tpl_path}{session.template}/image.php?w=50&h=50&src={member_media_path}{member_picture}' , username: '{member_username}' }, {lat},{lon});
             <!-- ENDIF -->

         <!-- END vldthemes_map -->
   }     
         

 </script>
  
<div class="hidden-xs">
  <div class="margin-b-15 bg_white" style="width:100%;height:265px" id="map-canvas"></div>
  <div id="out"></div>
</div>
