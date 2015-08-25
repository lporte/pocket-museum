$ ->
  App.artworks = new App.Collections.Artworks
  App.artworksListView = new App.ArtworksListView(collection: App.artworks)
  App.artworks.fetch
    success: ->
      App.artworksListView.hideLoader().setPlaceholder()
