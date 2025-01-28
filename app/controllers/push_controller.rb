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
    data = params[:data]
    game_id = params[:game_id] || 'my-event'
    # message = params[:message]
    $stderr.puts "Data: #{data}"
    $stderr.puts "Game Id: #{game_id}"    
    @pusher.trigger('my-channel', game_id, data)
    render json: {success: true}
  end
end
