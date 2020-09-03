$(function() {

  // 新規登録モーダル

  $('.signup-show').click(function() {
    $('#signup-modal').fadeIn();
  });

  $('#close-modal').click(function() {
    $('#signup-modal').fadeOut();
  });

  // 言語一覧

  $('.lesson').hover(
    function() {
      $(this).find('.text-contents').addClass('text-active');
    },
    function() {
      $(this).find('.text-contents').removeClass('text-active');
    }
  );
  
  
  $(".faq-list-item").click(function(){
    var $answer = $(this).find(".answer");
    
    if($answer.hasClass(".active")){
      $answer.slideUp("fast");
      $(this).find("span").text("+");
      $answer.removeClass(".active");
      
    }else{
      $answer.slideDown("fast");
      $(this).find("span").text("-");
      $answer.addClass(".active");
      
    }
    
    
  });

});
