
$(function(){ 
  var productsHeight = $("ul.products").height() + 50;
  var thermometerHeight = $("#thermometer").data("progress");
  var thermometerPercentage = thermometerHeight * 100 + "%";

  console.log( productsHeight );

  $(".product-display").css("height", productsHeight);
  $("#thermometer").css("height", productsHeight);
  $("#thermometer #bar").css("height", thermometerPercentage);
});