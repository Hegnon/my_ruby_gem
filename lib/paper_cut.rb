require_relative "paper_cut/version"

module PaperCut
  class Error < StandardError; end

  def min_paper_squares(width, height)
    return 0 if width == height # Caso base: se a largura e a altura forem iguais, não é necessário cortar o papel
  
    min_squares = [width, height].min # O menor valor entre a largura e altura será a primeira tentativa de corte
  
    (1..[width, height].min/2).each do |i|
      # Verificar se é possível obter um número menor de quadrados ao cortar o papel horizontalmente em uma posição 'i'
      min_squares = [min_squares, min_paper_squares(width, i) + min_paper_squares(width, height - i)].min
  
      # Verificar se é possível obter um número menor de quadrados ao cortar o papel verticalmente em uma posição 'i'
      min_squares = [min_squares, min_paper_squares(i, height) + min_paper_squares(width - i, height)].min
    end
  
    min_squares
  end
end


  


  

