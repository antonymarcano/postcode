PostCode = @CoffeeExample.PostCode

describe 'PostCode', ->

  valid_postcode_examples = [
    {
      scenario:   'accepts a valid postcode'
      postcode:   'M1 1AA'
      expectation:'M1 1AA'
    },
    {
      scenario:   'treats lowercase as uppercase'
      postcode:   'm1 1aa'
      expectation:'M1 1AA'
    }
  ]

  for each_example in valid_postcode_examples
    do (each_example) ->
      specifies_scenario_with = each_example.scenario

      it specifies_scenario_with, ->
        postcode = new PostCode(each_example.postcode)
        expect(postcode.toString()).toEqual each_example.expectation

# Other examples:    
  # m11aa
  # B33 8TH
  # CR2 6XH
  # DN55 1PT
  # W1A 1HQ
  # EC1A 1BB
