# intro

# coffeescript é similar ao python
# tanto em questão de sintaxe e em declaração de vars

# declarando as primeiras vars
nome = 'Régis'
idade = 21

# duas maneiras de mostrar msg, primeiro em JS e depois em coffee
msg_js = 'Nome: ' + nome + ', Idade: ' + idade
msg_coffee = "Nome : #{nome}, Idade: #{idade}"
# ao usar aspas simples, as variaveis que estão sendo chamadas dentro do #{} não são mostradas como variaveis e sim como strings
wrong_msg_coffee = 'Nome : #{nome}, Idade: #{idade}'



# mostrar a msg em js e em coffe respec
console.log(msg_js)
console.log msg_coffee
console.log wrong_msg_coffee
