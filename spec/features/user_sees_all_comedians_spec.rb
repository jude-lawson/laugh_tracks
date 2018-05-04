RSpec.describe 'a typical user visits /comedians' do
  it 'they should see a list of all comedians' do
    com1_attrs = {name: 'Alex Laughsalot', age: 49}
    com2_attrs = {name: 'Alice Chuckles', age: 52}
    Comedian.create(com1_attrs)
    Comedian.create(com2_attrs)

    visit '/comedians'

    within('#comedian-1') do
      expect(page).to have_content(com1_attrs[:name])
      expect(page).to have_content("Age: #{com1_attrs[:age]}")
    end

    within('#comedian-2') do
      expect(page).to have_content(com2_attrs[:name])
      expect(page).to have_content("Age: #{com2_attrs[:age]}")
    end
  end
end
