# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Rails creates this event, when the link_to(remote: true)
# successfully executes

jQuery -> $('#content_limit_date').datepicker format: 'dd-mm-yyyy', language: 'pt', defaultDate: $('#content_limit_date').val()

$(document).on 'ajax:success', 'a.vote', (status,data,xhr)->
  # the `data` parameter is the decoded JSON object
  $(".votes-count[data-id=#{data.id}]").text data.count

  $("a.vote[data-id=#{data.id}]").each ->
    $a = $(this)
    href = $a.attr 'href'
    text = $a.html()
    $a.html($a.data('toggle-text')).attr 'href', $a.data('toggle-href')
    $a.data('toggle-text', text).data 'toggle-href', href
    return

  return