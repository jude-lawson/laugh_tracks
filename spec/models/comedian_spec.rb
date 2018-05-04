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
  end
end
