App.Collections.Artworks = Backbone.Collection.extend
  model: App.Models.Artwork
  url: ->
    userId = $('#featured').data('user-id')
    "/users/#{userId}/artworks"
  featured: ->
    @where(featured: true)

