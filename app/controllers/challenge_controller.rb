class ChallengeController < ApplicationController
  NUMBERS = (1..54).to_a
  def home
    @classification_1 = @classification_2 = '55'
  end

  def set_name
    @name_1 = params[:name_1]
    @name_2 = params[:name_2]
  end

  def shuffle_card
    @classification_1 = "%02d" % NUMBERS.shuffle.first
    @classification_2 = "%02d" % NUMBERS.shuffle.first
  end
end
