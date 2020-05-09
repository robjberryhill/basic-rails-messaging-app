class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    # custom_display is refering to a scope declared in the message model.
    @messages = Message.custom_display
  end
end
