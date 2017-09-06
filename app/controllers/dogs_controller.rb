class DogsController < ApplicationController

  before_action :set_dog, only: [:show, :edit, :update]

  def new
    @dog = Dog.new()
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    if @dog.update(dog_params)
      flash[:notice] = "Your dog was updated!"
      redirect_to root_path
    else
      render :new, alert: "Error creating user."
    end
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name,
                                 :description,
                                 :photo,
                                 :breed,
                                 :weight,
                                 :age,
                                 :note)
  end
end
