class ProfilesController < ApplicationController

   before_action :set_profile, only: [:show, :edit, :update]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @profile.address = "#{@profile.street}, #{@profile.city}"
    @profile.save
    if @profile.update(user_params)
      flash[:notice] = "Your profile was updated!"
      @user = User.find(params[:id])
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
end
