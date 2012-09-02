@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor: (enteredPostCode) ->
    upperCase = (text) -> 
      text.toUpperCase()
    noSpacesIn = (text) ->
      text.replace /\s/g,''

    rawPostCode = noSpacesIn upperCase(enteredPostCode)
    @outcode = PostCode._outCodeFrom rawPostCode
    @incode = PostCode._inCodeFrom rawPostCode

  toString: ->
    "#{@incode} #{@outcode}"

  @_inCodeFrom = (postCode) ->
      postCode.slice 0, 2

  @_outCodeFrom = (postCode) ->
      postCode.slice 2, 5
