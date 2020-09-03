// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs

$(document).on('turbolinks:load', function() {
  $("#login").click(function() {
    $("#js-login-modal").fadeIn();

  });

  $("#js-login-close-modal").click(function() {
    $("#js-login-modal").fadeOut();

  });

  $(".header-right a").hover(function() {
    $(this).css("background-color", "#656262");
    $(this).css("color", "white");

  }, function() {
    $(this).css("background-color", "white");
    $(this).css("color", "black");

  });


  $("#submit-btn").hover(function() {
    $(this).css("background-color", "#656262");
    $(this).css("color", "white");


  }, function() {
    $(this).css("background-color", "#1760a0");
    $(this).css("color", "#FFF");

  });

  $(".edit-btn").hover(function() {
    $(this).css("background-color", "#656262");
    $(this).css("color", "white");

  }, function() {
    $(this).css("background-color", "#1760a0");
    $(this).css("color", "#FFF");

  });

  $(".edit-btn").hover(function() {
    $(this).css("background-color", "#656262");
    $(this).css("color", "white");

  }, function() {
    $(this).css("background-color", "#1760a0");
    $(this).css("color", "#FFF");

  });

  $(function() {
    setTimeout("$('.flash').fadeOut('slow')", 2000);
  });

  $(".start").on('click', function() {
    $(".js-start-wrapper").fadeIn();

  });

  $("#form_reset").click(function() {
    $('.date-search').val("");

  });



});
