@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor: (rawPostCode) ->
    simplePostCode = PostCode._simplifiedFrom rawPostCode

    @incode = PostCode._inCodeFrom simplePostCode
    @outcode = PostCode._outCodeFrom simplePostCode

  toString: ->
    "#{@incode} #{@outcode}"

  @_simplifiedFrom: (postCode) ->
    inUpperCase = PostCode._inUpperCase
    noSpaces = PostCode._withoutSpaces
    
    noSpaces(inUpperCase postCode)

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

  @_inUpperCase: (text) ->
    text.toUpperCase()

  @_withoutSpaces: (inText) ->
    inText.replace /\s/g,''
