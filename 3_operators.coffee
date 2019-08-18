# operadores

x = true || on || yes
y = false || off || no

# como em python, pode ser usado ||(or), &&(and) e !(not)
console.log x or y
console.log x and y
console.log not x

# não precisa de ':' no fim dos if's
if x is true
  console.log "oi #{x}"

# temos alguns recursos semelhantes ao true/false no coffee
console.log true == on
console.log true == yes

console.log false == off
console.log false == no

# não temos diferenciação na hora da comparação com uso de operadores de igualdade e identidade, como em JS
# no coffeescript já é usado automaticamente o operador de identidade('===', '!==') caso compilemos para js
ten_number = 10
ten_string = '10'

console.log '-- igualdade/identidade --'
console.log ten_number == ten_string
console.log ten_number != ten_string

# então, é preciso converter os tipos, caso haja uma comparação entre str e int
console.log ten_number == parseInt(ten_string)

# posso fazer essas comparações de forma mais 'verbosa'
console.log x == y
console.log x is y

console.log x != y
console.log x isnt y

################################################################################
# podemos fazer comparações mais proximas a 'matematica real'

nota = 55
# comparação em js
comp_js = 100 >= nota && nota >= 50
if comp_js
  console.log 'APROVADO'

# a mesma comparação em coffee
# note que a comparação de 'entre' é mais proxima ao que fazemos na matematica
comp_coffee = 100 >= nota >= 50
if comp_coffee
  console.log 'APROVADO'
