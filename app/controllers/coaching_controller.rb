class CoachingController < ApplicationController
  def answer
    @question = params[:quest]
    @response = coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer_enhanced(your_message)
    unless your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
      motivation = "I can feel your motivation! " if your_message == your_message.upcase
      if your_message.include? "?"
        return "#{motivation}Silly question, get dressed and go to work!"
      else
        return "#{motivation}I don't care, get dressed and go to work!"
      end
    else return "It's about time!"
    end
  end
end

