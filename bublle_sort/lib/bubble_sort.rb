
module BubbleSort
  class Error < StandardError; end
  #definição da função bubble_sort que recebe um array arr como argumento
  def bubble_sort(arr)
  # comprimento do array e armazenamos em n
    n = arr.length
  #controla o número de vezes que precisamos percorrer o array
    for i in 0...n
      #percorre cada elemento do array.
      for j in 0...n-i-1
      #comparação de cada par de elementos (arr[j] e arr[j+1])
      #se o elemento da posição j for maior que o da posição j+1 a troca de posições acontece 
        if arr[j] > arr[j+1]
          arr[j], arr[j+1] = arr[j+1], arr[j]
        end
      end
    end
  
    return arr
  end
  
  arr = [20,10,40,80,100,5,1]   
end