var feed = new Instafeed({
    get: 'user',
    userId: 269832113,
    accessToken: '269832113.1677ed0.132cf9fc530440f985fcb2d6fc91bbb4',
    resolution: 'standard_resolution',
    limit: 20,
    resolution: 'thumbnail',
    template: '<div class="column column-block"><img src="{{image}}" class="thumbnail" alt="" /></div>'
  });
  
feed.run();