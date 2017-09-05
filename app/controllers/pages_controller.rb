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
    @total_run_minutes = 0
    @avg_pace = rand(400..459).to_f/100
    current_user.dogs.each do |dog|
      dog.runs.each do |run|
        @runs << run
        @total_run_minutes += run.duration
      end
    end
    @total_km  = @total_run_minutes/@avg_pace
    @hash.first.merge!(picture: {url: ActionController::Base.helpers.asset_path("green_dog_sm.png"), width:50, height:50 })
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


