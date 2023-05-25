require"bublle_sort"


describe BublleSort do
    it 'ordena corretamente o array' do
    arr = [20,10,40,80,100,5,1]
    sorted_arr = [1, 5, 10, 20, 40, 80, 100]

    result = bubble_sort(arr)
    expect(result).to eql(sorted_arr)
    end      
end

    