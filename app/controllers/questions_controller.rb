class QuestionsController < ApplicationController
  def ask

  end

  def home

  end

  def answer
    @question = params[:question]
    @coach = {asking: "Silly question, get dressed and go to work!👩🏽‍💼",
      other: "I don't care, get dressed and go to work!👨🏽‍🎓",
      work: "Great! See you later, then 💁🏼‍♀️"
    }

    if @question.end_with? "?"
      @coach_response = @coach[:asking]
    elsif @question != "I am going to work!"
      @coach_response = @coach[:other]
    else
      @coach_response = @coach[:work]
    end
  end

end
