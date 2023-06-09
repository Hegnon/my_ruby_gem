require_relative "jump_search/version"

module ReversalAlgorithm
  class Error < StandardError; end

  def jump(array, alvo)
    n = array.length
    step = Math.sqrt(n).to_i
    prev = 0

    while array[[step, n].min - 1] < alvo 
        prev = step
        step += Math.sqrt(n).to_i
        return -1 if prev >= n

        break if array[[step, n].min - 1] >= alvo
    end

    while array[prev] < alvo
        prev += 1
        return -1 if prev == [step, n].min    
    end

    return prev if array[prev] == alvo
    return -1
end

