require "paper_cut"

RSpec.describe PaperCut do
  include PaperCut

  describe '#minimum_square' do
    it 'returns the minimum number of squares to cut the paper' do
      width = 10
      height = 8
      expected_output = 2

      result = min_paper_squares(width, height)
      expect(result).to eq(expected_output)
    end
  end
end