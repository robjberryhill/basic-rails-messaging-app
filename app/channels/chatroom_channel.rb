class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # Called when the consumer has successfully
    # become a subscriber to this channel.
    # Their connection is called a subscription.
    # The chatroom channel will stream from "chatroom_channel"
    # Any users subscribed to this channel will see what is being broadcasted.
    stream_from "chatroom_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
