PostCode = @CoffeeExample.PostCode

describe 'PostCode', ->

  describe 'valid postcodes', ->
    valid_postcode_examples = [
      {
        scenario:   'has an incode and an outcode'
        postcode:   'M1 1AA'
        expectation:'M1 1AA'
      }
      {
        scenario:   'treats lowercase as uppercase'
        postcode:   'm1 1aa'
        expectation:'M1 1AA'
      }
      {
        scenario:   "doesn't mind when there are no spaces"
        postcode:   'm11aa'
        expectation:'M1 1AA'
      }
    ]

    for each_example in valid_postcode_examples
      applies_each_example_with = each_example.scenario
      it applies_each_example_with, ->
        postcode = new PostCode(from each_example.postcode)
        expect(postcode.toString()).toEqual each_example.expectation

  describe 'invalid postcodes', ->
    message = 'Please provide a postcode'

    it 'might be undefined', ->
      expect(-> new PostCode(undefined)).toThrow(new PostCode.NoInputComplaint())

    it 'might be empty', ->
      expect(-> new PostCode('')).toThrow(new PostCode.NoInputComplaint())

from=(something) ->
  something

# Other examples:    
  # CR2 6XH
  # DN55 1PT
  # W1A 1HQ
  # EC1A 1BB
