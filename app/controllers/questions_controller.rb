class QuestionsController < ApplicationController
  def ask
  end

  def answer
    request = params[:answers]
    if request.downcase == "i am going to work"
      @answer = "Great!"
    elsif request[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
