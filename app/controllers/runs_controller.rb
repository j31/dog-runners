class RunsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @run = Run.find(params[:id])
    @user = User.find(@run.user_id)
  end

  def index
    @runs = Run.all
    # later it should be
    # @runs = Run.where(user.id == current_user.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
