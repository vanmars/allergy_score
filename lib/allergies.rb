class AllergyScore
  def initialize (input)
    @user = input
    @scores = { "128" => "cats", "64" => "pollen", "32" => "chocolate", "16" => "tomatoes", "8" => "strawberries", "4" => "shellfish", "2" => "peanuts", "1" => "eggs" }
    @user_int = @user.to_i
  end

  def get_allergies
    allergy_results = []
    if @scores.has_key?(@user)
      allergy_results.unshift(@scores.fetch(@user))
    else @scores.each do |score, allergen|
      if @user_int >= score.to_i
        allergy_results.unshift(allergen)
        @user_int -= score.to_i
      end
    end
    return allergy_results
  end

end
end
