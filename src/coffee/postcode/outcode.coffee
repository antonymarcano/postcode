@CoffeeExample.PostCode.OutCode = class OutCode
  constructor: (postCode) -> 
    @outcode = secondPartOf postCode

  @positionIn: (postCode) ->
    (endOf postCode) - 3

  toString: ->
    @outcode

  secondPartOf= (postCode) ->
    fromHere = OutCode.positionIn postCode
    toThere = endOf postCode
    postCode.slice fromHere, toThere
  
  endOf= (postCode) ->
    postCode.length
