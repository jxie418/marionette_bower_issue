@Arc = do(Backbone, Marionette) ->
  App = new Marionette.Application

  App.on "initialize:after", ->
    alert "after initialize"
    if Backbone.history
      Backbone.history.start(pushState: true)
    equalize()

  App

@Arc.start()