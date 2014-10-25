// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require zeroclipboard
//= require_tree .

$(document).ready(function(){
  var client = new ZeroClipboard($('#btn-copy'));
  client.on( "ready", function( readyEvent ) {
    client.on( "aftercopy", function( event ) {
      elem = $('#url_target');
      url = elem.val();
      elem.val('Link copied to clipboard!');
    } );
  } );
});
