@Example = @Example || {}

class @Example.CoffeeUtil
  @map: (array, func) ->
    func(item) for item in array

  @reduce: (array, acc, func) ->
    for item in array 
      do (item) ->
        acc = func(acc, item)
    acc
