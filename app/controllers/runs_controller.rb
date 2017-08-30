class RunsController < ApplicationController


  def new
    @run = Run.new
    @dogs = current_user.dogs

  end

  def create
    @run = Run.new(run_params)
    @run.user_id = 1
    @run.save
    if redirect_to @run
    else
      render :new
    end
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

private

  def run_params
    params.require(:run).permit(:dog_id, :status, :appointment, :durations, :price, :note, :park_id)
  end
end
