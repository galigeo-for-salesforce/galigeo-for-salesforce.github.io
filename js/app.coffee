---
---


$(window).load( () ->

  asideHeight = $('aside').outerHeight()
  contentHeight = $('.content-body').outerHeight()

  if asideHeight > contentHeight
    $('.content-body').css('min-height',asideHeight)
  else
    $('aside').css('min-height',contentHeight)
)




