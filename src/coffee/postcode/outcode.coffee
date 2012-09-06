@CoffeeExample.PostCode ?= {}
@CoffeeExample.PostCode.OutCode = class OutCode
  constructor: (postCode) -> 
    @outcode = secondPartOf postCode

  toString= ->
    @outcode
 
  toString: toString

  secondPartOf= (postCode) ->
    fromStartOfOutCode = outCodePositionIn postCode
    toEndOfPostCode = endOf postCode
    postCode.slice fromStartOfOutCode, toEndOfPostCode
  
  outCodePositionIn= (postCode) ->
    (endOf postCode) - 3

  endOf= (postCode) ->
    postCode.length


