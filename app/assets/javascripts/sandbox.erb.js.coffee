class Archetype
  constructor: (@id) ->
    $('.archetype')
      .draggable
        cancel: false
        containment: '.canvas .toolbar'
        stop: (event, ui) ->
          $("##{@id}").html("<%= j render partial: '#{@id}' %>")

$ -> new Archetype('symptom')
$ -> new Archetype('blood_pressure')
$ -> new Archetype('pulse')

        
        
 
