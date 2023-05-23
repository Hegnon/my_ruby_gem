require 'calculate_age'


RSpec.describe CalculateAge do
    describe 'calculate_idade' do
        it 'calculates the correct age' do
        data_nascimento_str = '00/00/0000'
        idade_anos, idade_meses, idade_dias = CalculateAge.calculate_idade(data_nascimento_str)
        expect(idade_anos).to be_nil
        expect(idade_meses).to be_nil
        expect(idade_dias).to be_nil
        end
    end
end