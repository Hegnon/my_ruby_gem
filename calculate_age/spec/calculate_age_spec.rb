require 'calculate_age'

describe '.calculate_idade' do
    it 'calculates the correct age' do
      data_nascimento_str = '01/01/1990'
      idade_anos, idade_meses, idade_dias = IdadeCalculatorGem.calculate_idade(data_nascimento_str)
      expect(idade_anos).to eq(33)
      expect(idade_meses).to eq(4)
      expect(idade_dias).to eq(21)
    end
end