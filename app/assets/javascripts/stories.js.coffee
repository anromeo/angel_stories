# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(->
	$('.add_point').click((event)->

    $this = $(this)

    $this.attr("src",
      "/assets/halo-left.png").attr("src",
      "/assets/halo-straight.png").attr("src",
      "/assets/halo-right.png")
    $id = $this.attr('id')
    url = "/stories/" + $id + "/points/new"
    event.preventDefault()
    $this.parent('table').append('<img alt="Angel2" height="auto"
      src="/assets/angel2.png" width="100px">')
    $.get url, (data)->
      $this.parent().children('.points').text data
  )

  $('.fancybox').fancybox()

)