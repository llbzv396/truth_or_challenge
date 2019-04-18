class ChallengeController < ApplicationController
  CARD_NUMBERS = (1..54).to_a
  def home
    @classification_1 = @classification_2 = '55'
  end

  def set_name
    @name_1 = params[:name_1]
    @name_2 = params[:name_2]
  end

  def shuffle_card
    @classification_1 = "%02d" % CARD_NUMBERS.shuffle.first
    @classification_2 = "%02d" % CARD_NUMBERS.shuffle.first
    @number = {}
    j = 1
    CARD_NUMBERS.each do |i|
      j = 1 if j == 14
      @number["#{i}"] = j
      i += 1
      j += 1
    end
    @number["53"] = 14
    @number["54"] = 14
    tmp_1 = @number["%01d" % @classification_1]
    tmp_2 = @number["%01d" % @classification_2]
    if tmp_1 == tmp_2
      @winner = 3
    elsif tmp_1 > tmp_2
      @winner = 1
    else
      @winner = 2
    end
  end
end

