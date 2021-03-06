# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


init = ->
  # Hide tool bar by default
  $(".toolbar-row").hide()

  # Events
  $(".img-selectable").on "click", (e) ->
    $(this).toggleClass "img-selected"
    selected = $(".img-selected")
    
    if selected.length > 0
      $(".toolbar-row").show()
    else
      $(".toolbar-row").hide()

  $(".img-sig-selectable").on "click", (e) ->
    if $(this).hasClass("img-selected")
      $(this).removeClass("img-selected")
    else
      $(".img-selected").removeClass "img-selected"
      $(this).addClass("img-selected")

    selected = $(".img-selected")   
    if selected.length > 0
      $(".toolbar-row").show()
    else
      $(".toolbar-row").hide()

  $(".group1").colorbox({rel: "group1"})

$(document).ready(init)
$(document).on('page:load', init)