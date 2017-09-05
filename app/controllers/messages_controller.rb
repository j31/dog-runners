class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @run = Run.find(params[:run_id])
    @conversation = @run.conversation
    @message.conversation = @conversation
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html { redirect_to run_path(@run) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'runs/show' }
        format.js
      end
    end
  end

private

  def message_params
    params.require(:message).permit(:content)
  end
end
