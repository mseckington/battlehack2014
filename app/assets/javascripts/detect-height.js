$(function(){ 
  var $height = 0 ;
  $("li.l").each(function(){
      if(($(this).height())>$height){
              $height = $(this).height();
      }
  });
  $("li.l").each(function(){
      $(this).css("height",$height)
  });
});