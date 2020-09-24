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
    expect(allergies.get_allergies).to(eq(["eggs", "peanuts"]))
  end

  it('returns [eggs, peanuts, shellfish, strawberries] if input is "15"') do
    allergies = AllergyScore.new("15")
    expect(allergies.get_allergies).to(eq(["eggs", "peanuts", "shellfish", "strawberries"]))
  end

  it('returns [eggs, cat] if input is "129"') do
    allergies = AllergyScore.new("129")
    expect(allergies.get_allergies).to(eq(["eggs", "cat"]))
  end

end