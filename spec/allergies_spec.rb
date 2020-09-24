require ('rspec')
require ('allergies')

describe('AllergyScore#get_allergies') do
  it('returns eggs if input is 1') do
    allergies = AllergyScore.new("1")
    expect(allergies.get_allergies).to(eq(["eggs"]))
  end
end