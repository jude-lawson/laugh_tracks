RSpec.describe Comedian do
  describe 'Validations' do
    it 'should be invalid without a name' do
      comedian = Comedian.new(age: 48)

      expect(comedian).to_not be_valid
    end

    it 'should be invalid without an age' do
      comedian = Comedian.new(name: 'Alex Laughsalot')

      expect(comedian).to_not be_valid
    end
  end

  describe 'Class Methods' do
    describe '.all' do
      it 'should return all comedians' do
        Comedian.create(name: 'Alex Lauhgsalot', age: 49)
        Comedian.create(name: 'Alice Chuckles', age: 52)
        
        expect(Comedian.all.length).to eq(2)
      end
    end

    describe '.find_special' do
      it 'should return comedian\'s special' do
        special_name = 'Funny Special'
        Comedian.create(name: 'Alex Lauhgsalot', age: 49)
        special = Special.create(name: special_name, comedian_id: 1)

        expect(Comedian.find_special(1)).to eq(special)
      end
    end
  end
end
