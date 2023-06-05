require 'select_sort'

RSpec.describe SelectSort do 
  include SelectSort
  
    describe 'selection_sort' do      
      it 'ordena corretamente o array' do
        array = [64, 25, 12, 22, 11]
        sorted_array = selection_sort(array)
        expect(sorted_array).to eq([11, 12, 22, 25, 64]) 
      end
    end
  end
