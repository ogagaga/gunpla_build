//= require jquery
//= require bootstrap-sprockets
//= require moment
//= require moment/ja
//= require bootstrap-datetimepicker
//= require bootstrap-filestyle
//= require_tree .

$(function() {
  $('.date').datetimepicker({
    locale: 'ja',
    format : 'YYYY-MM-DD HH:mm:ss'
  });

  $(":file").filestyle({
    input: false
  });
});
