PostCode = @CoffeeExample.PostCode
OutCode = PostCode.OutCode

PostCode.InCode = class InCode
  constructor: (postCode) ->
    @incode = firstPartOf postCode

  toString: ->
    @incode

  firstPartOf= (postCode) ->
    fromStart = 0
    toOutCode = OutCode.positionIn postCode
    postCode.slice fromStart, toOutCode
