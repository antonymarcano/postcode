PostCode = @CoffeeExample.PostCode

describe 'PostCode', ->

  describe 'valid postcodes', ->
    valid_postcode_examples = [
      {
        scenario:   'can have a two character incode'
        postcode:   'M1 1AA'
        expectation:'M1 1AA'
      }
      {
        scenario:   "can have 3 character incodes"
        postcode:   "B33 8TH"
        expectation:"B33 8TH"
      }
      {
        scenario:   'treats lowercase as uppercase'
        postcode:   'm1 1aa'
        expectation:'M1 1AA'
      }
      {
        scenario:   "doesn't mind whether there are spaces or not"
        postcode:   'm11aa'
        expectation:'M1 1AA'
      }
    ]

    for each_example in valid_postcode_examples
      do (each_example) ->
        should_do = each_example.scenario

        it should_do, ->
          postcode = new PostCode(each_example.postcode)
          expect(postcode.toString()).toEqual each_example.expectation

  describe 'invalid postcodes', ->
    describe 'missing  postcodes', ->
      message = 'Please provide a postcode'

      it 'might be undefined', ->
        expect(-> new PostCode(undefined)).toThrow(new PostCode.NoInputComplaint())

      it 'might be empty', ->
        expect(-> new PostCode('')).toThrow(new PostCode.NoInputComplaint())

      
# Other examples:    
  # CR2 6XH
  # DN55 1PT
  # W1A 1HQ
  # EC1A 1BB
