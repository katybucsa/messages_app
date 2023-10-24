class ChatroomController < ApplicationController

  def index
    @messages = Message.includes(:user).all.order(:created_at)
  end
end
