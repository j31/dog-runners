class RunsController < ApplicationController

  def new
    @run = Run.new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @run = Booking.new(run_params)

  end

  def show
  end

  def index
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
