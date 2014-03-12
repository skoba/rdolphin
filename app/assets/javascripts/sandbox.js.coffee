class Archetype
  constructor: (@id) ->
    formid = @id
    $('.archetype')
      .draggable
        cancel: false
        connectToSortable: '.canvas'
        stop: ->
          $.ajax
            data: form: @id
            success: (data, textStatus, jqXHR) ->
              $("##{formid}").html(data)

$ ->
  $('#symptom')
    .draggable
      cancel: false
      stop: ->
        $.ajax
          data: form: 'symptom'
          success: (data, textStatus, jqXHR) ->
            $('#symptom').html(data)

  $('#pulse_rate')
    .draggable
      cancel: false
      stop: ->
        $.ajax
          data: form: 'pulse_rate'
          success: (data, textStatus, jqXHR) ->
            $('#pulse_rate').html(data)

  $('#blood_pressure')
    .draggable
      cancel: false
      stop: ->
        $.ajax
          data: form: 'blood_pressure'
          success: (data, textStatus, jqXHR) ->
            $('#blood_pressure').html(data)

        
        
 
