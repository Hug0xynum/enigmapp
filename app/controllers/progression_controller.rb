class ProgressionController < ApplicationController
  def create
    @user = current_user #TODO: Define user globaly by token
    Progression.create({
        user: @user
    })
    render nothing: true, status: :created
  end
end
