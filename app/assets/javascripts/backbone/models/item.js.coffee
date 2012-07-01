class Friendreminder.Models.Item extends Backbone.Model
  paramRoot: 'item'
  #defaults:

class Friendreminder.Collections.ItemsCollection extends Backbone.Collection
  model: Friendreminder.Models.Item
  url: '/items'
