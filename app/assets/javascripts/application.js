// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require handlebars.runtime
//= require_tree .
//= require_tree ./templates



// $.support.cors = true;
// $(function() {
//   $('#stats-submit').click(function(ev) {
//     ev.preventDefault();
//     var container = $('#stats');
//     var year = $('#stats-year').val();
//     var week = $('#stats-week').val();
//     var params = { 

//             // Specify your developer key 

//             key: '1dca78d0-2f19-4954-863a-338f4f2ab105', 

//         }; 
//     var url = 'http://api.nfldata.apiphany.com/trial/JSON/PlayerGameStatsByPlayerID/' + year + '/' + week + '/9038?' + $.param(params)
//     $.ajax({ 
//       url: url,
//       dataType: 'jsonp', 
//       type: 'GET', 
//       converters: "text json",
//       success: function(data) {
//         var results = $.parseJSON(data);
//         console.log(results);
//         var template = JST["stats-results"](results);
//         container.append(template)        
//       }

//     });
//   })
// })
