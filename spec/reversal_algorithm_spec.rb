require 'reversal_algorithm'

RSpec.describe ReversalAlgorithm do
    describe "reversal_algorithm" do
        it "Testando revelsal algorithm" do
        arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        target = 6
        expected_output = [6, 5, 4, 3, 2, 1, 7, 8, 9, 10] 

        result = reversal(arr,n)
        expect(result).to eql(expected_output)
        end        
    end
end
    