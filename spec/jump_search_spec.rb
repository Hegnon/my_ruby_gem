require 'jump_search'

RSpec.describe JumpSearch do
    include JumpSearch

    describe 'jump_search' do
        it 'buscando o indice com jump serach' do
        
        array = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
        alvo = 15
        
        result = jump(array, alvo)
        expect(result).to eql?(alvo) 
        end
    end
end