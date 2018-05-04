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

  describe 'Class Methods' do
    describe '.find_by' do
      it 'should return comedian\'s special when given comedian\'s id' do
        special_name = 'A Very Funny Special'
        special = Special.create(name: special_name, comedian_id: 1)

        expect(Special.find_by(comedian_id: 1)).to eq(special)
      end
    end
  end
end
