require ('rspec')
require ('allergies')

describe('AllergyScore#get_allergies') do
  it('returns eggs if input is 1') do
    allergies = AllergyScore.new("1")
    expect(allergies.get_allergies).to(eq(["eggs"]))
  end

  it('returns peanuts if input is 2') do
    allergies = AllergyScore.new("2")
    expect(allergies.get_allergies).to(eq(["peanuts"]))
  end

  it('returns [eggs, peanuts] if input is "3"') do
    allergies = AllergyScore.new("3")
    expect(allergies.get_allergies).to(eq(["eggs, peanuts"]))
  end

end