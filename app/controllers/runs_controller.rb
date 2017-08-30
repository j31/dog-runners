class RunsController < ApplicationController


  def new
    @run = Run.new
    @dogs = current_user.dogs

  end

  def create
    @run = Run.new(run_params)
    @run.user_id = 1

    if @run.save
      redirect_to @run
    else
      render :new
    end
  end

  def show
    @run = Run.find(params[:id])
    @user = User.find(@run.user_id)
  end

  def index
    # if you have a dog and he has had a run before
    if current_user.dogs != [] && Run.all.select { |r| r.dog_id == current_user.dogs.first.id } != []
    # select all the runs of your dog
     @runs = Run.all.select { |r| r.dog_id == current_user.dogs.first.id }
    else
      redirect_to root_path
    end
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
