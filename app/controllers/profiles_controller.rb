class ProfilesController < ApplicationController

   before_action :set_profile, only: [:show, :update]

  def show
  end

  def update
    if @profile.update(user_params)
      flash[:notice] = "Your profile was updated!"
      redirect_to profile_path(@profile)
    else
      render :new, alert: "Error creating user."
    end
  end


private

  def set_profile
    @profile = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email,
                                 :first_name,
                                 :last_name,
                                 :description,
                                 :photo,
                                 :street,
                                 :city,
                                 :state,
                                 :zip,
                                 :country,
                                 :address)
  end







  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end
end
