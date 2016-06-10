# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
    $('.day').click ->
        $(this).toggleClass('selected')

    $('form').submit ->
        $('#response_content').val(JSON.stringify($(".day.selected").map (_, d) -> 
            $(d).data("date")
        .toArray()))
