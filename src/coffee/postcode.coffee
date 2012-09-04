@CoffeeExample = @CoffeeExample || {}
@CoffeeExample.PostCode = @CoffeeExample.PostCode || {}

@CoffeeExample.PostCode = class PostCode
  constructor= (postCode) ->
    ensureWeHaveA postCode
    @incode = firstPartOf simplified postCode
    @outcode = secondPartOf simplified postCode

  constructor: constructor

  toString: ->
    "#{@incode} #{@outcode}"

  ensureWeHaveA= (postCode) ->
    missingInputReasons = [
      -> not postCode?
      -> postCode is ''
    ]
    for anyReason in missingInputReasons
        thereIsNoPostCode() if anyReason() is true

  thereIsNoPostCode= ->
    throw new NoInputComplaint()

  simplified= (postCode) ->
    noSpaces(inUpperCase postCode)

  firstPartOf= (postCode) ->
    fromStart = 0
    toOutCode = outCodePositionIn postCode
    postCode.slice fromStart, toOutCode

  secondPartOf= (postCode) ->
    fromStartOfOutCode = outCodePositionIn postCode
    toEndOfPostCode = endOf postCode
    postCode.slice fromStartOfOutCode, toEndOfPostCode
  
  outCodePositionIn= (postCode) ->
    (endOf postCode) - 3

  endOf= (postCode) ->
    postCode.length

  inUpperCase= (text) ->
    text.toUpperCase()

  noSpaces= (inText) ->
    inText.replace /\s/g,''

@CoffeeExample.PostCode.NoInputComplaint = class NoInputComplaint extends Error
  constructor: (@message = 'Please provide a postcode') ->
