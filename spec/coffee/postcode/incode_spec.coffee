InCode = @CoffeeExample.PostCode.InCode

describe 'InCode', ->
  describe 'the first part of the postcode', ->
    postcodes_with_valid_incodes = [
      {
        scenario:   'can have a two character incode'
        postcode:   'M11AA'
        expectation:'M1'
      }
      {
        scenario:   "can have 3 character incodes"
        postcode:   "B338TH"
        expectation:"B33"
      }
    ]

    for each_example in postcodes_with_valid_incodes
      do (each_example) ->
        should_do = each_example.scenario

        it should_do, ->
          incode = new InCode(each_example.postcode)
          expect(incode.toString()).toEqual each_example.expectation
