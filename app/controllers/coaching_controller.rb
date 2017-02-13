class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @reponse = coach_answer_enhanced(@query)
  end


  def ask
  end



    def coach_answer_enhanced(your_message)
      if your_message.downcase == "i am going to work right now!"
        ''
      elsif your_message.end_with?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
    end
end


