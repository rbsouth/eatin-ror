# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	memberWrap = $(".members-wrapper")
	$(".accordian-toggle").on "click", ->
		console.log("goteeem")
		if memberWrap.hasClass("members-wrapper-closed")
			memberWrap.removeClass("members-wrapper-closed")
			memberWrap.addClass("members-wrapper-open")
		else if memberWrap.hasClass("members-wrapper-open")
			memberWrap.removeClass("members-wrapper-open")
			memberWrap.addClass("members-wrapper-closed")

	map = undefined

	() ->
	  map = new (google.maps.Map)(document.getElementById('map'),
	    center:
	      lat: -34.397
	      lng: 150.644
	    zoom: 8)
	  return