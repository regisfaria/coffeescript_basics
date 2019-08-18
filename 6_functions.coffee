# funções

###
exemplo de função no js

function nome_funcao() {
  //rotina
};
nome_funcao();
###

static_sum = -> 5 + 5
console.log static_sum()

# no coffeescript as funções sempre tem retorno
sum = (x, y) ->
  x + y

console.log sum(15, 15)
# não preciso usar parenteses, mas evitar utilizar isso, pois pode ocasionar erros
console.log sum 15, 30

# não é preciso o uso dos () na declaração de uma função, mas é recomendavel usar, para termos um padrão no que está sendo escrito
animal =
  especie: 'cachorro'
  som_emitido: () ->
    'Grwwll!! au au'

console.log animal.som_emitido()

# uma demonstração do comentario da linha 20 abaixo:
calculos =
  sum: (x, y) ->
    x + y
  exp: (x, y) ->
    x ** y

# caso eu queira chamar tanto a função de soma, como a de exponenciação num mesmo print
# e eu decida que não vou usar parenteses na ultima chamada, isso vai passar
console.log calculos.sum(100, 100), calculos.exp 2, 2

# mas podemos observar o erro comentado na linha 20, caso eu decida não usar parenteses na primeira chamada
#console.log calculos.sum 100, 100, calculos.exp (2, 2)

################################################################################
# splat -> passar varios args para a função

# o splat é definido pelos '...' após uma variavel
multi = (p...) ->
  multi = 1
  for value in p
    multi *= value
  # preciso terminar chamando a variavel novamente para que seja retornado apenas o valor desejado
  # caso eu não chame a variavel multi no final sera retornado um vetor que é toda as multiplicações feitas(neste caso)
  multi

console.log multi(2, 2, 2)

################################################################################
# alguns outros usos do range('[..], [...]')

fruits = ['orange', 'apple', 'peach', 'cocconaut', 'strawberry']

# posso passar os indices de um outro vetor para um novo vetor, onde ele vai pegar apenas os valores definidos no range
fewer_fruits = fruits[0..2]

console.log fruits
console.log fewer_fruits

# como em python, posso usar o range em um for
console.log num for num in [0..100] by 20
