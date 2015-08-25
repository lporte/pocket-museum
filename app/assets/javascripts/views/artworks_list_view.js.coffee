App.ArtworksListView = Backbone.View.extend
  el: '#featured'
  initialize: ->
    @listenTo @collection, 'sync', @render
    @on 'handlePlaceholder', @setPlaceholder, @
  render: ->
    for model in @collection.featured()
      itemView = new App.ArtworkItemView(model: model, listView: this)
      @$el.append itemView.render().el
  hideLoader: -> $('.loading').hide(); this
  setPlaceholder: ->
    if @collection.featured().length is 0
      $('.featured-artworks').append('<p class="no-featured">No featured artworks</p>')
    else
      $('.featured-artworks').find('p').remove()

