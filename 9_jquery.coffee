# JQuery
# NOTE: for this code works, you will need to compile it to .js, so 9_index.html can use the script

$(document).ready ->
  $("#list li").click (e) ->
    e.preventDefault()
    # show the list name on click
    ###
    text = $(@).text()
    alert text
    ###
    # hide item on click
    $(@).hide()

  # every time we resize the window, show it's event
  $(window).on 'resize', (e) ->
    console.log e

  # show the hidden itens
  $(".btn").on 'click', (e) ->
    e.preventDefault()
    $("#list li").show()

  # show some output infos from input cep using a address api
  $("#cep").keyup (e) ->
    cep = $(@).val()
    if cep.length >= 8
      $.post(
        url: "https://viacep.com.br/ws/#{cep}/json/"
        dataType: "json"
        method: "GET"
        success: (data) ->
          for key, value of data
            tuple = "#{key}: #{value}"
            console.log tuple
          $(".result").text JSON.stringify(data)
        error: (e) ->
          console.log(e)
      )
