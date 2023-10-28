class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    ActionCable.server.broadcast 'chatroom_channel', { new_message: message.body } if message.save
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
