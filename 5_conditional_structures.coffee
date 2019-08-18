# estruturas condicionais

# NOTA:mudar manualmente o valor para ver os diferentes resultados
nota = 50

if nota >= 60
  console.log "APROVADO"
else if 60 >= nota >= 40
  console.log 'REC'
else
  console.log "REPROVADO"

# posso fazer if em uma unica linha
# NOTA:mudar manualmente o valor para ver os diferentes resultados
nota_regis = 40

if nota_regis == 100 then console.log 'GABARITOU' else console.log 'NÃO GABARITOU\nTENTE NOVAMENTE'

# também é possivel por else if em uma unica linha e atribuir isso a uma variavel

msg = if nota_regis >= 57.5 then 'APROVADO' else if (57.5 > nota_regis >= 30) then 'DE REC' else 'REPROVADO'

console.log "O aluno Régis foi #{msg}"

# no coffeescript temos a estrutura unless, que é como um 'if negativo'
unless nota > 57.5
  console.log 'REPROVADO'
else
  console.log 'APROVADO'

# NOTA: também é possivel utilizar o unless como o if da linha 15 e 19
# diferente de python, que não possui switch case, temos disponivel no coffeescript

# NOTA:mudar manualmente o valor para ver os diferentes resultados
entrada = 0

switch entrada
  when 1
    result = entrada * 5
    console.log "o resultado é #{result}"
  when 2
    result = entrada * 5
    console.log "o resultado é #{result}"
  # podemos usar em uma linha com o 'then'
  when 3 then console.log "Seu resultado não é calculavel"
  # o semelhante ao 'default' em outas linguagem aqui é o else
  else
    console.log "não temos nenhum resultado"

################################################################################
# condicionais de loop
console.log 'vamos contar de 0 a 10...'
count = 0

while count < 11
  console.log "#{count}..."
  count++

# em CoffeeScript temos o operador 'until', onde ele fica em loop enquanto aquela condição é verdadeira
# note que é diferente do while, que sempre checa se a condição é falsa('Count é = 11? não -> loop')
# exemplo similar abaixo
console.log 'vamos contar de 0 a 10 usando o until...'
count = 0

until count >= 11
  console.log "#{count}..."
  count++

# temos em coffeescript um operador para loops infinitos, que é semelhante a fazer um 'while true'
loop
  rand_num = Math.random()*8|0
  console.log rand_num
  if rand_num is 2 then break

################################################################################
# compressões = for

# posso preencher um vetor da seguinte maneira, onde ele põe todos os valores entre os extremos, incluindo os extremos
values = [5..10]
# caso eu use '...' ele vai do extremo esquerdo até o extremo direito, mas não o incluindo
# no caiso abaixo o vetor tem valores=[5,6,7,8,9]
values_other_exemple = [5...10]

# o for é semelhante ao for em python
# posso usar um segundo argumento para receber os indices do vetor respectivos ao valor
console.log 'printando valores e chaves'
for value, keys in values
  console.log keys, value

# posso definir passo no for com o uso da palavra chave 'by'
nomes = [
  'Régis'
  'Carol'
  'Lasu'
  'Gisre'
  'Pedro'
  'Maria'
  'Joao'
  'Paula'
]

for nome in nomes by 2
  console.log nome

# posso declarar uma lista atribuindo uma estrutura for para ela
# a estrutura precisa estar em parenteses
nomes_filtrados = (nome for nome in nomes by 2)
console.log nomes_filtrados

# for of -- bom para iterar objects
# no 'for of' usamos a mesma estrutura para percorrer, com a diferença na ordem da declaração
# onde no 'for in' havia a ordem de valor, chave(indice); no 'for of' é chave, valor
eu =
  nome: 'Régis'
  idade: 21
  sexo: "M"

for key, value of eu
  console.log key, value

# caso eu tenha uma lista de objetos
shipping_list = [
    product: 'apple'
    price: 0.75
    qtd: 100
  ,
    product: 'orange'
    price: 0.65
    qtd: 59
  ,
    product: 'rice'
    price: 2.75
    qtd: 200
]
# posso usar o 'for of' para iterar nela

for key, value of shipping_list
  console.log key, value
  console.log "#{key} - Product: #{value.product}, Price: #{value.price}, Quantity: #{value.qtd}"

# posso usar o 'for in' para criar uma lista contendo os valores de uma chave especifica de um object
products = (list.product for list in shipping_list)
console.log products

# CONCLUSÃO: for of tens que ser usado para objects, mas com o for in posso ter as mesmas funcionalidades.
# Lembrar que for in vem valor primeiro e depois chave, no for of essa ordem é invertida.
