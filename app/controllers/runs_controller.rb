class RunsController < ApplicationController

  def new
    @run = Run.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @run = Booking.new(run_params)
    @run.dog_id = params[:dog_id]
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
    params.require(:run).permit(:dog_id, :user_id, :status, :appointment, :duration, :price, :note, :park_id)
  end
end
