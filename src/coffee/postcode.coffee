@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor: (fromPostCode) ->
    postCode = fromPostCode.toUpperCase().replace /\s/g,''
    outcode = postCode.slice 2, 5
    incode = postCode.slice 0, 2
    @postCode = incode + ' ' + outcode

  toString: ->
    @postCode
