# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(->

  $(document).on 'change', '#headerImage', ->
    newWidth = $('.wrapper').width()
    $(this).width(newWidth)

	$('#stream').on 'click','.add_point', ->

    $this = $(@)

    $this.attr("src",
      "/assets/halo-left.png").attr("src",
      "/assets/halo-straight.png").attr("src",
      "/assets/halo-right.png")
    $id = $this.attr('id')
    url = "/stories/" + $id + "/points/new"
    event.preventDefault()
    $.get url, (data)->
      $this.parent().children('.points').text data
      $this.parent('div').append('<img alt="Angel2" height="auto"
        src="/assets/angel2.png" width="100px">')

  $('.fancybox').fancybox()

)