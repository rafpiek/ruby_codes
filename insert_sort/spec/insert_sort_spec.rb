require 'insert_sort'

RSpec.describe InsertSort do
  context 'sort' do
    it 'sorts an array' do
      array = [4,6,2,1,57,8,53,2,1,0]
      expect(InsertSort.sort(array)).to eq([0,1,1,2,2,4,6,8,53,57])
    end
  end
end
