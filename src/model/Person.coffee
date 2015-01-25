class window.Person extends Backbone.Model
  defaults: {action: 'do nothing'}

  triggerYell: -> 
    @trigger 'yell', @ 
    console.log @get('name')+' is yelling'

  triggerJoke: -> 
    @trigger 'joke', @ 
    console.log @get('name')+' is joking'

  laugh: -> 
    @set('action', 'laugh')
    console.log @get('name') + ' is '+@get('action')

  cry: -> 
    @set('action', 'cry')
    console.log @get('name') + ' is '+@get('action')

