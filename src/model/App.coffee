class window.App extends Backbone.Model
  initialize: ->
    @set 'AuntMenchu', new Family().makeMenchuFamily()
    @set 'AuntTere', new Family().makeTereFamily() 

    