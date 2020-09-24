class AllergyScore
  def initialize (input)
    @user = input
    @scores = { "1" => "eggs", "2" => "peanuts", "4" => "shellfish", "8" => "strawberries", "16" => "tomatoes", "32" => "chocolate" , "64" => "pollen" , "128" => "cats"  }
    @user_int = @user.to_i
  end

  def get_allergies
    allergy_results = []
    if @scores.has_key?(@user)
      allergy_results.push(@scores.fetch(@user))
    else @scores.each do |score, allergen|
      if @user_int >= score.to_i
        allergy_results.push(allergen)
        @user_int -= score.to_i
      end
    end
    return allergy_results
  end

end
end
