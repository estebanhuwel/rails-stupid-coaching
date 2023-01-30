class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # de aca vemos el params es el atributo del cual queremos obtener la informacion
    # en este caso es de question que es el NAME de nuestro input en la form, por lo que
    # por medio de params podemos llamar a lo que se escribe en el input
    if @question.blank?
      @answer = "I cant't hear you"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
  # con el arroba creamos instance variables, para llamarlas en otras partes
end

# INTERFACE
# require_relative "coach_answer"
# # # TODO: Implement the program that makes you discuss with your coach from the terminal.
# puts "Hello, I am THE SUPER coach, what would you want to tell me?"

# my_answer = nil

# while my_answer != ""
#   print "> "
#   my_question = gets.chomp
#   my_answer = coach_answer_enhanced(my_question)
#   puts my_answer
# end

# puts "See you later Alligator"

# COACH ANSWER
# def coach_answer(your_message)
#   # TODO: return coach answer to your_message
#   if your_message.downcase == "i am going to work right now!"
#     ''
#   elsif your_message.end_with?("?")
#     "Silly question, get dressed and go to work!"
#   else
#     "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   my_answer = coach_answer(your_message)

#   # if your_message == "I AM GOING TO WORK RIGHT NOW!"
#   #   ''
#   # elsif your_message.upcase == your_message
#   #   "I can feel your motivation! #{my_answer}"
#   # else
#   #   my_answer
#   # end

#   case your_message
#   when "I AM GOING TO WORK RIGHT NOW!"
#     ''
#   when your_message.upcase
#     "I can feel your motivation! #{my_answer}"
#   else
#     my_answer
#   end
# end
