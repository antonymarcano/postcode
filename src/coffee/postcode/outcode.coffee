@CoffeeExample.PostCode.OutCode = class OutCode
  constructor: (postCode) -> 
    @outcode = secondPartOf postCode

  @positionIn: (postCode) ->
    (endOf postCode) - 3

  toString: ->
    @outcode

  secondPartOf= (postCode) ->
    fromStartOfOutCode = OutCode.positionIn postCode
    toEndOfPostCode = endOf postCode
    postCode.slice fromStartOfOutCode, toEndOfPostCode
  
  endOf= (postCode) ->
    postCode.length
