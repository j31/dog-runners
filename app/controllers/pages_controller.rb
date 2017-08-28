class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    before_action :logged_out?


  end

  def help
  end

  def become_runner
  end

private

  def logged_out?
    current_user = nil
  end
end
