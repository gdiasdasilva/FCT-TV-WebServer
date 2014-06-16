# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Rails creates this event, when the link_to(remote: true)
# successfully executes
$(document).on 'ajax:success', 'a.vote', (status,data,xhr)->
  # the `data` parameter is the decoded JSON object
  alert "lol"
  $(".votes-count[data-id=#{data.id}]").text data.count

  # toggle links
  $("a.vote[data-id=#{data.id}]").each ->
    $a = $(this)
    href = $a.attr('href')
    text = $a.text()
    $a.text($a.data('toggle-text')).attr('href', $a.data('toggle-href')
    $a.data('toggle-text', text).data('toggle-href', href))
    return

  return