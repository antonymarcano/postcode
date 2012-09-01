CoffeeUtil = Example.CoffeeUtil
describe "CoffeeUtil", ->
  it "should map some values", ->
    array = [1,2,3]
    results = CoffeeUtil.map array, (item) ->
      return item * 2

    expect(results).toEqual [2,4,6]

  it "should reduce some values", ->
    array = [1,2,3]
    result = CoffeeUtil.reduce array, 0, (acc, item) ->
      return acc + item

    expect(result).toEqual 6
