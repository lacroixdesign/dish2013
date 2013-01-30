checkNav = ->
  scrollTop = $(window).scrollTop()
  offset    = $("#nav").offset().top
  console?.log "ScrollTop: " + scrollTop
  console?.log "Offset: " + offset
  if scrollTop >= offset
    fixed = true
  else
    fixed = false
  $("#menu-static").toggleClass("active", !fixed)
  $("#menu-fixed").toggleClass("active", fixed)

# TODO use better window.resize
$(window).on "scroll resize", (event) ->
  # console?.log event
  checkNav()
