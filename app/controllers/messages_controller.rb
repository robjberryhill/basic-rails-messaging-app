class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    # If message is saved then broadcast message to your channel.
    # the received: (data) -> in your .coffee
    # is called when there's incoming data on the websocket for this channel.
    # broadcast "channel", key: information.to.send
    if message.save
      ActionCable.server.broadcast "chatroom_channel",
      obj: message_render(message)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  # this message_render is taking in a message data then rendering a partial _message.html.erb and passing in a local variable message: with message data that was passing in the whole method.
  def message_render(message)
    render(partial: "message", locals: { message: message })
  end
end
