# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#posts').imagesLoaded ->
    $('#posts').masonry
      itemSelector: '.box'
      isFitWidth: true

$ ->
  $('#posts_alt').imagesLoaded ->
    $('#posts_alt').masonry
      itemSelector: '.box'
      isFitWidth: true