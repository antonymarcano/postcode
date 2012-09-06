@CoffeeExample.PostCode ?= {}
@CoffeeExample.PostCode.NoInputComplaint = class NoInputComplaint extends Error
  constructor: (@message = 'Please provide a postcode') ->
