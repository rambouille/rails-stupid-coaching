class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] || ""
    if @question.downcase == "i am going to work"
      @answer = "Great!"
    elsif @question.downcase == "what time is it?"
      @answer = "it is #{Time.now}"
    elsif @question.match?(/.\?$/)
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
