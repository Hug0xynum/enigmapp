class EnigmasController < ApplicationController
  before_filter :authenticate, :only => [:show, :index]

  def show
    @user = current_user
    theme = Theme.where(label: params[:label]).first
    enigma = Enigma.where(theme_id: theme.id).where(difficulty: params[:difficulty]).first
    if(enigma.nil?)
      render nothing: true, status: :not_found
    else
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

      #Block access to next enigma
      if progression_current_theme >= enigma.difficulty
        #Create answer if doesn't exist yet
        if (enigma.answers.where(user: @user).first.nil?)
          Answer.create(user: @user, enigma: enigma)
        end
        #Select answer
        @answer = enigma.answers.where(user: @user).first
        @clue = @answer.clue_used
        @enigma = enigma
        render 'enigmas/enigma'
      else
        render(:file => File.join(Rails.root, 'public/403.html'), status: :forbidden, :layout => false)
      end
    end
  end

  def index
    @user = current_user
    if (params[:label] == "final")
      finals = Enigma.where("difficulty = 5")
      @enigmas = finals
      @label = "final"
    else
      @theme = Theme.where(label: params[:label]).first
      enigmas = Enigma.where(theme_id: @theme.id).where("difficulty < 5")
      @enigmas = enigmas
    end
      render 'enigmas/theme'
  end
end
