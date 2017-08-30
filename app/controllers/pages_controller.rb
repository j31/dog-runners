class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def secret
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
  end

private

end


