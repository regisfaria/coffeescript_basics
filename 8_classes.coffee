# class

# o '@' é semelhante ao this

class Car
  # constructor
  constructor: (@color, @year, @model) ->
    @msg = "I'm a #{@color} #{@model}, year #{@year}"

  show_msg: () ->
    console.log @msg

  is_new_car: () ->
    if @year >= 2016
      console.log "I'm a new car"
    else
      console.log "I'm a old car"


car = new Car('Black', '2018', 'Lamburghini')
car.show_msg()
car.is_new_car()

# herança

# atributos herdados da classe não podem/precisam? ser declarados com @
class Future_Car extends Car
  constructor: (color, year, model, @futuristic_function) ->
    # a função super() chama o construtor da classe pai
    super(color, year, model)

  is_new_car: () ->
    if @year > 2050
      console.log "I'm a new car and I can #{@futuristic_function}"
    else
      console.log "I'm a old car, but I can #{@futuristic_function}"

# prototipação de classes, posso adicionar atributos fora da classe
Future_Car::solar_fuel = true

f_car = new Future_Car('Orange', 2090, "NEWFord", 'Fly')
f_car.show_msg()
f_car.is_new_car()
console.log f_car.solar_fuel
