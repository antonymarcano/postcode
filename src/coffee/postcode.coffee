@CoffeeExample ?= {}

@CoffeeExample.PostCode = class PostCode
  constructor: (postCode) ->
    ensureWeHaveA postCode
    @incode = new PostCode.InCode(simplified postCode)
    @outcode = new PostCode.OutCode(simplified postCode)

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
    throw new PostCode.NoInputComplaint()

  simplified= (postCode) ->
    noSpaces(inUpperCase postCode)

  inUpperCase= (text) ->
    text.toUpperCase()

  noSpaces= (inText) ->
    inText.replace /\s/g,''
