# vetores e objetos

# formas de declarar vetores
vector1 = [1, 2, 3, 4, 5, 6]
vector2 = new Array 1, 2, 3, 4, 5, 6

# da forma de declaração abaixo, a cada quebra de linha, o coffeescript entende como uma virgula
numbers = [
  1
  2
  3
  4
  5
  6
]

# formas de declarar objetos
eu = {nome: 'Regis', sobrenome: 'Faria', idade: 21}

pessoa = {
  nome: 'Aline'
  idade: 27
}

outra_pessoa =
  nome: 'Charlie'
  idade: 70

pessoa_js = new Object()
pessoa_js.nome = 'Suzan'
pessoa_js.idade = 15

console.log eu, pessoa_js, pessoa, outra_pessoa

# formas de declarar vetor de objetos
pessoas1 = [{nome: 'José', idade:35}, {nome: 'Solange', idade: 65}]
# nota: é preciso usar 2 tabs
pessoas2 =
[
    nome: 'Maria'
    idade: 7
  ,
    nome: 'Joãozinho'
    idade: 8
]
console.log pessoas1, pessoas2
