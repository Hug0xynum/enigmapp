class AnswersController < ApplicationController
  before_filter :authenticate, :only => [:propose, :clue_used]
  skip_before_action :verify_authenticity_token, :only => [:propose, :clue_used]
  def propose
    @user = current_user #TODO: Define user globaly by token
    theme = Theme.where(label: params[:label]).first
    enigma = Enigma.where(theme_id: theme.id).where(difficulty: params[:difficulty]).first
    answer = Answer.where(user: @user).where(enigma: enigma).first

    #Select good theme
    if enigma.theme_id == nil
      progression_current_theme = 100
    elsif enigma.theme_id == 1
      progression_current_theme = @user.progression.history
    elsif enigma.theme_id == 2
      progression_current_theme = @user.progression.philosophy
    elsif enigma.theme_id == 3
      progression_current_theme = @user.progression.maths
    elsif enigma.theme_id == 4
      progression_current_theme = @user.progression.technology
    else
      render nothing: true, status: :not_found
    end

    #Check if current user has already answered to this enigma
    if (!answer.right_answer.nil?)
      render nothing: true, status: :conflict
    else
      if (progression_current_theme >= enigma.difficulty)
      proposition = params[:proposition]

        #Check if proposition is enigma's right answer
        if proposition.downcase == answer.enigma.right_answer.downcase
          answer.update_attributes(right_answer: proposition)
          answer.update_attributes(solved_at: Time.now)
          #Permit to access next enigma of the same theme
          if theme.label == "final"
            puts "Progression completed"
          elsif theme.label == "history"
            @user.progression.update_attributes(history: @user.progression.history += 1)
          elsif theme.label  == "philosophy"
            @user.progression.update_attributes(philosophy: @user.progression.philosophy += 1)
          elsif theme.label  == "maths"
            @user.progression.update_attributes(maths: @user.progression.maths += 1)
          elsif theme.label  == "technology"
            @user.progression.update_attributes(technology: @user.progression.technology += 1)
          else
            render nothing: true, status: :not_found
          end

          flash.now[:success] = "Bravo! Vous pouvez passer à la prochaine"
          @enigma = enigma
          @right_answer = answer.right_answer
          render 'enigmas/enigma'
        else
          answer.wrong_answers << proposition
          answer.save
          flash.now[:error] = "Dommage! Ce n'est pas la bonne réponse"
          @enigma = enigma
          @wrong_answers = answer.wrong_answers
          render 'enigmas/enigma'
        end
      else
        render nothing:true, status: :forbidden
      end
    end
  end

  def use_clue
    @user = current_user
    theme = Theme.where(label: params[:label]).first
    enigma = Enigma.where(theme_id: theme.id).where(difficulty: params[:difficulty]).first
    answer = Answer.where(user: @user).where(enigma: enigma).first

    answer.updates_attribute(clue_used: true)
    render nothing:true
  end
end
