# variaveis e comentarios

# comentario

###
# commentario
# + de uma linha
###

# string
name = "Régis"

# number
price = 15.78

# boolean
test = true || false

# null
text = null

# undefined
text = undefined

# vetores
shipping_list = ['apple', 'orange', 'coconaut']

# objects(json, dict)
person = {
  name: 'Regis',
  age: 21
}

# também posso declarar um object sem o uso das chaves
person =
  name: 'Regis'
  age: 22

console.log('Imprimindo um json')
console.log(person)

# apesar de declarar uma chave de um json como uma variavel, ao acessar esta informação
# é preciso que seja usado aspas para acessar aquele campo, ou vai ser como 'undefined'
console.log('imprimindo um elemento especifico do json')
console.log(person['age'])
# a linha abaixo causa um erro no código
#console.log(person[age])

console.log('imprimindo uma lista')
console.log(shipping_list)

# CoffeeScript não entende um indice negativo para seus vetores
console.log('imprimindo primeiro e ultimo elemento especifico de uma lista')
console.log(shipping_list[0], shipping_list[2])
