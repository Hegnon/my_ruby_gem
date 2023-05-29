require_relative "calculate_age/version"
require 'date'

module CalculateAge
  class Error < StandardError; end
  

  puts "Digite a data de nascomento - formato dd/mm/aaaa"
  def self.calculate_idade(data_nascimento_str)
    data_nascimento_str = gets.chomp
    dia, mes, ano = data_nascimento_str.split('/').map(&:to_i) #Entender melhor 
    data_nascimento = Date.new(ano, mes, dia)

    data_atual = Date.today

    idade_anos = data_atual.year - data_nascimento.year
    idade_meses = data_atual.month - data_nascimento.month
    idade_dias = data_atual.day - data_nascimento.day

    if idade_dias < 0
        ultimo_mes = data_atual << 1
        idade_dias += (data_atual - ultimo_mes).day
        idade_meses -= 1
      end

    if idade_meses < 0
        idade_meses += 12
        idade_anos -= 1
    end

    puts "A idade é #{idade_anos} anos , #{idade_meses} meses , #{idade_dias} dias "

  end
end

