require 'shaker_sort'

RSpec.describe ShakerSort do
  context 'sort' do
    it 'sorts an array' do
      array = [4,6,2,1,57,8,53,2,1,0]
      expected = [0,1,1,2,2,4,6,8,53,57]
      expect(ShakerSort.sort(array)).to eq(expected)
    end
  end
end
