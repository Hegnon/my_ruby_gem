require_relative "reversal_algorithm/version"

module ReversalAlgorithm
  class Error < StandardError; end

  def reversal (arr,n)
    (0...(n/2)).each do |i|
        temp = arr[i]
        arr[i] = arr[n-i-1]
        arr[n-i-1] = temp
    end
    return arr
end  



