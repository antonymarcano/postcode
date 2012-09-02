PostCode = @CoffeeExample.PostCode

describe 'PostCode', ->

  it 'accepts a valid postcode', ->
    enteredPostCode = 'M1 1AA'
    postcode = new PostCode(enteredPostCode)
    expect(postcode.toString()).toEqual 'M1 1AA'

  it 'treats lowercase as upper case', ->
    enteredPostCode = 'm1 1aa'
    postcode = new PostCode(enteredPostCode)
    expect(postcode.toString()).toEqual 'M1 1AA'

# Other examples:    
  # m1 1aa
  # m11aa
  # B33 8TH
  # CR2 6XH
  # DN55 1PT
  # W1A 1HQ
  # EC1A 1BB
