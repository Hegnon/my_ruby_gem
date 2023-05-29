require 'bubble_sort'

RSpec.describe 'BubbleSort' do
  include BubbleSort

  describe '#bubble_sort' do 
    it 'ordena corretamente o array' do
      # Array de entrada
      arr = [20, 10, 40, 80, 100, 5, 1]
    
      # Array esperado após a ordenação
      sorted_arr = [1, 5, 10, 20, 40, 80, 100]
    
      # Chama a função bubble_sort para ordenar o array
      result = bubble_sort(arr)
    
      # Verifica se o resultado é igual ao array esperado
      expect(result).to eq(sorted_arr)
    end
  end
end