class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def secret
  end


  def help
  end

  def become_runner
  end

private

end
