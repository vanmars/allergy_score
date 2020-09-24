class AllergyScore
  def initialize (input)
    @user = input
    @scores = { "1" => "eggs", "2" => "peanuts", "4" => "shellfish", "8" => "strawberries", "16" => "tomatoes", "32" => "chocolate" , "64" => "pollen" , "128" => "cats"  }
  end

  def get_allergies
    allergy_results = []
    if @scores.has_key?(@user)
      allergy_results.push(@scores.fetch(@user))
    end
    return allergy_results
  # @scores.each do |score, allergen|
  end


end

