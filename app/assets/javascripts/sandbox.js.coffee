$ ->
  $('.archetype')
    .draggable
      cancel: false
      containment: '.canvas .toolbar'
      stop: (event,ui) ->
        $("#symptom").html("<%= render 'blood_pressure' %>")
  $('.canvas')
    .droppable
      accept: '.archetype'

        
        
 
