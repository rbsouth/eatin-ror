# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load' , ->
	memberWrap = $(".members-wrapper")
	$(".accordian-toggle").on "click", ->
		if memberWrap.hasClass("members-wrapper-closed")
			memberWrap.removeClass("members-wrapper-closed")
			memberWrap.addClass("members-wrapper-open")
		else if memberWrap.hasClass("members-wrapper-open")
			memberWrap.removeClass("members-wrapper-open")
			memberWrap.addClass("members-wrapper-closed")

	mapContainer = $(".map-container")
	mapContainer.on "click", ->
		if mapContainer.hasClass("map-container-closed")
			mapContainer.removeClass("map-container-closed")
			mapContainer.addClass("map-container-open")
		else if mapContainer.hasClass("map-container-open")
			mapContainer.removeClass("map-container-open")
			mapContainer.addClass("map-container-closed")