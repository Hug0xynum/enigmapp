class PagesController < ApplicationController
  def home
  	@titre = "Accueil"
    if signed_in?
    end
  end

  def rules
  	@titre = "Règles"
  end
end
