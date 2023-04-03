# frozen_string_literal: true

require_relative "binary_search/version"

module BinarySearch
  class Error < StandardError; end
  #Defina o índice baixo para o primeiro elemento da matriz e o índice alto para o último elemento.
  def binary_search (arr, target)
    low = 0
    high = arr.length - 1

    #Repita as etapas até que o elemento seja encontrado ou fique claro que o elemento não está presente na matriz.
    while low <= high
      mid = (low + high) / 2
      #Defina o índice médio como a média dos índices baixo e alto.
      if arr[mid] == target
        return mid
        #Se o elemento de destino for menor que o elemento no índice do meio, defina o índice alto para o índice do meio – 1
      elsif arr[mid] < target
        low = mid + 1
        #Se o elemento de destino for maior que o elemento no índice do meio, defina o índice baixo para o índice do meio + 1.
      else
        high = mid - 1
      end
    end

    return nil
  end
  arr = [10,20,30,40,50,60,70,80,90]
  target = 90

  puts binary_search(arr,target)
end
