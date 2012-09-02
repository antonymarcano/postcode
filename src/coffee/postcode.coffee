@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor: (fromPostCode) ->
    @postCode = fromPostCode

  toString: ->
    @postCode
