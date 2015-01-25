class window.AppView extends Backbone.View
  template: _.template($('#app-template').html())

  initialize: ->
    @render()
    @start()
    return
  
  start: ->
    tere = @model.get('AuntTere').at(0)
    diego = @model.get('AuntTere').at(1)
   
    #when diego tells joke, tere is not listening
    #tere.on('joke', tere.laugh)
    #solution 1: the obj that triggered the event must be 'on' the event
    # diego.on 'joke', tere.laugh, tere
    #solution 2: use listenTo 
    # tere.listenTo diego, 'joke', tere.laugh
    # diego.triggerJoke()


    #if event is registered at collection, all models in the
    #collection will response to the event...
    #in this case, Menchu will cry too
    # menchu = (@model.get 'AuntMenchu').at(0)
    # menchu.triggerYell()

    ### Family events ###
    menchuFamily = @model.get 'AuntMenchu'
    tereFamily = @model.get 'AuntTere'
    
    #code below will not have response from tereFamily
    tereFamily.on 'invite', tereFamily.rsvp
    # tereFamily.listenTo menchuFamily, 'invite', tereFamily.rsvp
    menchuFamily.triggerInvite()

  render: ->
    @$el.html @template
    @$('.tere-family-view').append new FamilyView(collection: @model.get 'AuntTere').render()
    @$('.menchu-family-view').append new FamilyView(collection: @model.get 'AuntMenchu').render()
    return   

  