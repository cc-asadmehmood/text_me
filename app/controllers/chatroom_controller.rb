class ChatroomController < ApplicationController
  # before_action :require_user

  def index
    # @messages = Message.all
    # @message = Message.new
  end

  # def create
  #   @message = Message.new(message_params)
  #   @message.user = current_user

  #   if @message.save
  #     ActionCable.server.broadcast "chatroom_channel", message: message_render(@message)
  #   else
  #     render "index"
  #   end
  # end

  # private

  # def message_params
  #   params.require(:message).permit(:body)
  # end

  # def message_render(message)
  #   ApplicationController.renderer.render(partial: "message", locals: { message: message })
  # end
end
