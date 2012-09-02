@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor: (enteredPostCode) ->
    upperCasePostCode = PostCode._inUpperCaseFrom enteredPostCode
    rawPostCode = PostCode._withoutSpacesIn upperCasePostCode
    @outcode = PostCode._outCodeFrom rawPostCode
    @incode = PostCode._inCodeFrom rawPostCode

  toString: ->
    "#{@incode} #{@outcode}"

  @_inUpperCaseFrom: (text) ->
    text.toUpperCase()

  @_withoutSpacesIn: (text) ->
      text.replace /\s/g,''

  @_inCodeFrom: (postCode) ->
      postCode.slice 0, postCode.length - 3

  @_outCodeFrom: (postCode) ->
      postCode.slice postCode.length - 3, postCode.length
