class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def secret
    @hash = Gmaps4rails.build_markers(current_user) do |user, marker|
      marker.lat current_user.latitude
      marker.lng current_user.longitude
    end
    @dog_runs = []
    avg_pace_counter = 0
    all_stats = {name: "All", total_km: 0, total_runs: 0, total_mins: 0, avg_pace: 0, runs: [] }
    unless current_user.dogs.blank?
      current_user.dogs.each do |dog|
        dog_stats = {name: dog.name, total_km: 0, total_runs: dog.runs.size, total_mins: 0, avg_pace: rand(440..459).to_f/100, runs: [] }
        avg_pace_counter += dog_stats[:avg_pace] unless dog.runs.size == 0
        dog.runs.each do |run|
          dog_stats[:total_mins] += run.duration
          all_stats[:total_mins] += run.duration
          dog_stats[:total_km] += (run.duration/dog_stats[:avg_pace])
          all_stats[:total_km] += (run.duration/dog_stats[:avg_pace])
          all_stats[:total_runs] += 1
          dog_stats[:runs] << run
          all_stats[:runs] << run
        end

        @dog_runs << dog_stats
      end
      all_stats[:avg_pace] += (avg_pace_counter/current_user.dogs.size)
    end

    @dog_runs << all_stats
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


