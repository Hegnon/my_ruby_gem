require 'binary_search'

RSpec.describe BinarySearch do
    describe 'binary_search' do
        it 'a simple binary search' do
            arr = [10,20,30,40,50,60,70,80,90]
            target = 90
            expect(result).to eql(8) 

            result = binary_search(arr, target)
            expect(result).to eq(expected_output)
        end
    end
end    