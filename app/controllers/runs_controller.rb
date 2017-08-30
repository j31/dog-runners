class RunsController < ApplicationController


  def new
    @run = Run.new
    @dogs = current_user.dogs
  end

  def create
    @run = Run.new(run_params)
    @run.user_id = 1
    @run.confirmed = true
    if @run.save
      redirect_to confirm_path(@run)
    else
      render :new
    end
  end

  def confirm_edit
    @run = Run.find(params[:id])
    @dog = @run.dog
  end

  def confirm_update
    @run = Run.find(params[:id])
    @run.status = 1
    if @run.update(run_params)
      flash[:notice] = "Your booking request was recieved!"
      redirect_to @run
    else
      render :confirm_edit, alert: "Error creating booking."
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


private

  def run_params
    params.require(:run).permit(:confirmed, :dog_id, :status, :appointment, :duration, :price, :note, :park_id)
  end
end
