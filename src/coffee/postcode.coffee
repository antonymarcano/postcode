@CoffeeExample = @CoffeeExample || {}

class @CoffeeExample.PostCode
  constructor: (rawPostCode) ->
    upperCase = (text) -> 
      text.toUpperCase()
    noSpacesIn = (text) ->
      text.replace /\s/g,''
    firstPartOf = (postCode) ->
      postCode.slice 0, 2
    secondPartOf = (postCode) ->
      postCode.slice 2, 5

    postCode = noSpacesIn upperCase(rawPostCode)
    @outcode = secondPartOf postCode
    @incode = firstPartOf postCode

  toString: ->
    @incode + ' ' + @outcode

  @_noSpacesIn: (text) ->
    
