$(function() {

  // 新規登録モーダル
  
  $('.signup-show').click(function() {
    $('#signup-modal').fadeIn();
  });

  $('#close-modal').click(function() {
    $('#signup-modal').fadeOut();
  });
  
  // 言語一覧
  $(".lesson").hover(
    function(){
    $(this).find(".text-contents").fadeIn();
    
  },function(){
    $(this).find(".text-contents").fadeOut();
    
    
  });
  
  

});
