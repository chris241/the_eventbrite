class UsersController < ApplicationController
  def index
  end

  def show
  	if params[:id] == current_user.id
  	end
  end

  def edit
  end
end
