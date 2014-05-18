# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

player_fragment_poll = ->

system_fragment_poll = -> 


$ ->
  percent = 0
  $(".sound").trigger 'play'
  $(".mute").click ->
    $(".sound").prop("muted",!$(".sound").prop("muted"))
  setInterval( (-> 
    if percent > 400
      percent = 0
    $(".progress").css("width", percent+"px")
    percent = percent + 1), 10)
    
