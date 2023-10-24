class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.includes(:user).all.order(:created_at)
  end
end
