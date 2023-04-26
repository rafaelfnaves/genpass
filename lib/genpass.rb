puts "..: Gerador de Senha :.."
puts ""

puts "Qual a quantidade de caracteres da senha desejada? (ex: 8, 10, 12)"

quantity = gets.chomp.to_i

puts "Qual tipo de Senha deseja? \n
        1 - letras \n
        2 - Letras + Números \n
        3 - Letras + Números + Caracteres especiais"

type_password = gets.chomp.to_i

def generate_password(option, quantity)

  case option
  when 1
    chars = ('a'..'z').to_a + ('A'..'Z').to_a
  when 2
    chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  when 3
    chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '&', '*', '(', ')', '-', '+', '=', '[', ']', '{', '}', '<', '>', '|']
  else
    return "Erro, opção inválida!"
  end

  password = ""
  quantity.times { password << chars.sample }
  password
end

pass = generate_password(type_password, quantity)
puts pass