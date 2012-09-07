PostCode = @CoffeeExample.PostCode
OutCode = PostCode.OutCode

PostCode.InCode = class InCode
  constructor: (postCode) ->
    @incode = firstPartOf postCode

  toString: ->
    @incode

  firstPartOf= (postCode) ->
    fromHere = 0
    toThere = OutCode.positionIn postCode
    postCode.slice fromHere, toThere
