class window.PersonView extends Backbone.View

  tagName: 'tr'

  template: _.template('<td><%= name %></td><td><%= action %></td>')
  
  initialize: -> 
    @render()
    @listenTo @model, 'change', @render

  render: ->
    @$el.html @template @model.attributes