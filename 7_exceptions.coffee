# exceptions

# temos estruturas para tratar errors, com a seguinte sintaxe

# NOTA: tire o comentario para executar o codigo do try, comente para executar o catch
#x = 0.5
try
  multi = 100 * x
  console.log "A multiplicação = #{multi}"
# semelhante ao 'except' em python
catch error
  console.log "Exception: #{error}"
# o finally é um codigo que vai ser executado de qualquer maneira, dando certo ou não
finally
  console.log "Testando o finally..."

# throw
division = (v1, v2) ->
  x = v1
  y = v2
  try
    unless y == 0
      div = x / y
    else
      throw("Error!\nDivision by 0")
  catch error
    console.log error

console.log 'Testando uma função com throw...'
console.log division(10, 0)
