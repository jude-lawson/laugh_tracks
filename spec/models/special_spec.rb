RSpec.describe Special do
  describe 'Validations' do
    it 'should be invalid without name of special' do
      special = Special.new(comedian_id: 1)

      expect(special).to_not be_valid
    end

    it 'should be invalid without comedian id' do
      special = Special.new(name: 'A Very Funny Special')

      expect(special).to_not be_valid
    end
  end
end
