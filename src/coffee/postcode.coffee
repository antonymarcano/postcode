@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor: (enteredPostCode) ->
    upperCasePostCode = PostCode._inUpperCaseFrom enteredPostCode
    rawPostCode = PostCode._withoutSpacesFrom upperCasePostCode
    @incode = PostCode._inCodeFrom rawPostCode
    @outcode = PostCode._outCodeFrom rawPostCode

  toString: ->
    "#{@incode} #{@outcode}"

  @_inCodeFrom: (postCode) ->
    fromStart = 0
    toOutCode = PostCode._outCodePositionIn postCode
    postCode.slice fromStart, toOutCode

  @_outCodeFrom: (postCode) ->
    fromStartOfOutCode = PostCode._outCodePositionIn postCode
    toEndOfPostCode = PostCode._endOf postCode
    postCode.slice fromStartOfOutCode, toEndOfPostCode

  @_outCodePositionIn: (postCode) ->
    (PostCode._endOf postCode) - 3

  @_endOf: (postCode) ->
    postCode.length

  @_inUpperCaseFrom: (text) ->
    text.toUpperCase()

  @_withoutSpacesFrom: (text) ->
    text.replace /\s/g,''
