@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor= (postCode) ->
    ensureWeHaveA postCode
    @incode = firstPartOf simplified postCode
    @outcode = secondPartOf simplified postCode

  constructor: constructor

  toString: ->
    "#{@incode} #{@outcode}"

  ensureWeHaveA= (postCode) ->
    throw new Error('Please provide a postcode') if not postCode?
    throw new Error('Please provide a postcode') if postCode is ''

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
