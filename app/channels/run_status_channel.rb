class RunStatusChannel < ApplicationCable::Channel
  def subscribed
    stream_from "run_#{params[:run_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
