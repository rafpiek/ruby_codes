require 'bubble_sort'

RSpec.describe BubbleSort do
  context 'sort' do
    it 'sorts an array' do
      array = [4,6,2,1,57,8,53,2,1,0]
      expect(BubbleSort.sort(array)).to eq([0,1,1,2,2,4,6,8,53,57])
    end
  end
end
