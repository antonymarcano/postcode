OutCode = @CoffeeExample.PostCode.OutCode

describe 'OutCode', ->
  describe 'the second part of the postcode', ->
    it "is normally the last 3 characters of the postcode", ->
      fromPostCode = "M1 1AA"
      outcode = new OutCode(fromPostCode)
      expect(outcode.toString()).toBe "1AA"
