class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def secret
    @hash = Gmaps4rails.build_markers(current_user) do |user, marker|
      marker.lat current_user.latitude
      marker.lng current_user.longitude
    end
    @runs = []
    current_user.dogs.each do |dog|
      dog.runs.each do |run|
        @runs << run
      end
    end
    @hash.first.merge!(picture: {url: ActionController::Base.helpers.asset_path("green_dog_sm.png"), width:50, height:50 })
    @runs = Run.all
    @all_my_runs = []
    @runs.each do |run|
      if run.dog.user == current_user
        @all_my_runs << run
      end
    end
  end


  def help
  end

  def become_runner
  end

  def gps
    @run = Run.find(params[:run_id])
  end

private

end


