require 'reversal_algorithm'

RSpec.describe ReversalAlgorithm do
    include ReversalAlgorithm

    describe 'reversal' do        
        let(:arr) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }
        let(:n) { 6 }
        
        it "Testando revelsal algorithm" do
        expect(reversal(arr, n)).to eql([6, 5, 4, 3, 2, 1, 7, 8, 9, 10])
        end        
    end
end
    