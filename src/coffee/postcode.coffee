@CoffeeExample ?= {}

@CoffeeExample.PostCode = class PostCode
  constructor: (postCode) ->
    youMustProvideA postCode
    forOurPostCode = we removeSpacesFrom(theUpperCase postCode)
    
    @incode = new PostCode.InCode(forOurPostCode)
    @outcode = new PostCode.OutCode(forOurPostCode)

  toString: ->
    "#{@incode} #{@outcode}"

  youMustProvideA= (postCode) ->
    criteria = [
      -> postCode?
      -> postCode isnt ''
    ]
    for anyCriterion in criteria
        complain() if anyCriterion() isnt true

  complain= ->
    throw new PostCode.NoInputComplaint()

  theUpperCase= (text) ->
    text.toUpperCase()

  removeSpacesFrom= (text) ->
    text.replace /\s/g,''

  we= (doSomething) ->
    doSomething
