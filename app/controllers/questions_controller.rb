class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = "I don't care, get dressed and go to work!"

    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question]
      @answer
    end
  end
end
