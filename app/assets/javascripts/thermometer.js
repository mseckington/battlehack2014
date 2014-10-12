$(function(){ 
  var productsHeight = $("ul.products").height() + 50;
  var thermometerHeight = $("#thermometer").data("progress");
  var thermometerPercentage = thermometerHeight * 100 + "%";

  $(".product-display").css("height", productsHeight);
  $("#thermometer").css("height", productsHeight);


  $(window).on('scroll', function() {
    var y_scroll_pos = window.pageYOffset;
    var scroll_pos_test = 300;            

    if(y_scroll_pos > scroll_pos_test) {
      $("#thermometer #bar").animate({ height: thermometerPercentage }, 1000);
    }
  });
});