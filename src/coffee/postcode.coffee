@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor: (fromPostCode) ->
    @postCode = fromPostCode.toUpperCase()

  toString: ->
    @postCode
