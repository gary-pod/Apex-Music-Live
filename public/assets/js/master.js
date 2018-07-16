var feed = new Instafeed({
    get: 'user',
    userId: 269832113,
    accessToken: '269832113.1677ed0.132cf9fc530440f985fcb2d6fc91bbb4',
    resolution: 'standard_resolution',
    limit: 20,
    resolution: 'thumbnail',
    template: '<div class="column column-block"><img src="{{image}}" class="thumbnail" alt="" /></div>'
  });
  
if(window.location.pathname == '/' || window.location.pathname == '/apex-studio') {
  feed.run();
} 


jQuery(function($) {
  // Asynchronously Load the map API 
  var script = document.createElement('script');
  script.src = "//maps.googleapis.com/maps/api/js?key=AIzaSyD6otD5di-JKgq0GSvxSm7Ytz6WnEu1O5k&callback=initialize";
  document.body.appendChild(script);
});

function initialize() {
  var map;
  var bounds = new google.maps.LatLngBounds();
  var mapOptions = {
      mapTypeId: 'roadmap'
  };
                  
  // Display a map on the page
  map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
  map.setTilt(45);
      
  // Multiple Markers
  var markers = [
      ['APEX STUDIO, Unit 3, Derrycrin road  BT80 0HJ Cookstown', 54.643711,-6.5613988],
      ['APEX WORKSHOP, 14 Sullenboy park BT80 8HPCookstown', 54.6401879,-6.7528764]
  ];
      
  // Display multiple markers on a map
  var infoWindow = new google.maps.InfoWindow(), marker, i;
  
  // Loop through our array of markers & place each one on the map  
  for( i = 0; i < markers.length; i++ ) {
      var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
      bounds.extend(position);
      marker = new google.maps.Marker({
          position: position,
          map: map,
          title: markers[i][0]
      });
      
      // Automatically center the map fitting all markers on the screen
      map.fitBounds(bounds);
  }

  // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
  var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
      this.setZoom(12);
      google.maps.event.removeListener(boundsListener);
  });
  
}