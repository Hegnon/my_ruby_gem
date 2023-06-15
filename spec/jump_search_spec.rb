require 'jump_search'

RSpec.describe JumpSearch do
    include JumpSearch

    describe 'jump' do
        it 'buscando o indice com jump search' do
        array = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
        target = 15
        expected_output = 7
        
        result = jump(array, target)
        expect(result).to eql(expected_output)
        end
    end
end