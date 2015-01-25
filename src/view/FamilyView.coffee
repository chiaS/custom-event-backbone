class window.FamilyView extends Backbone.View
  tagName: 'table',

  initialize: ->
    
  render: -> 
    self = @
    @collection.map (person) -> 
      self.renderEach(person)

    return @el

  renderEach:(person) ->
    
  	@$el.append new PersonView(model: person).el
  	return