$(document).ready(function(){
  $('.poster-link').hover(
    function(){
      $(this).find('.plus_sign').show();
    },
    function(){
      $(this).find('.plus_sign').hide();
    }
  );
  console.log ("running")
  // $('#calendar__slideshow').hover(
  //   function(){
  //     $('.opacity6').show();
  //   },
  //   function(){
  //     $('.opacity6').hide();
  //   }
  // );
});
