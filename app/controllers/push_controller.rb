require 'pusher'

class PushController < ApplicationController
  def initialize
    @pusher = Pusher::Client.new(
      app_id: Rails.configuration.pusher[:app_id],
      key: Rails.configuration.pusher[:key],
      secret: Rails.configuration.pusher[:secret],
      cluster: Rails.configuration.pusher[:cluster]
    )
  end

  def index
  end
  
  def send_message
    username = params[:username]
    message = params[:message]
    $stderr.puts "Username: #{username}"
    @pusher.trigger('my-channel', 'my-event', {username: username, message: message})
    render json: {success: true}
  end
end
