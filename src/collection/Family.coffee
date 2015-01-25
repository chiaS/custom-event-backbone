class window.Family extends Backbone.Collection
  initialize: ->
    @on 'yell', ()->
      @.forEach (person) -> person.cry()

  makeMenchuFamily: ->
    @add(new Person(name: 'Menchu'))
    @add(new Person(name: 'Victoria'))
    @add(new Person(name: 'Raymond'))


  makeTereFamily: ->
    @add(new Person(name: 'Tere'))
    @add(new Person(name: 'Diego'))
    @add(new Person(name: 'Nicole'))

  triggerInvite: -> 
    @trigger 'invite', @
    console.log @at(0).get('name')+' sent invites'
    
  rsvp: ->
    console.log 'Response from '+ @at(0).get('name')+' is a '+
    if Math.floor(Math.random()*10) % 2 then 'Yes' else 'No'
