class Api::GreetingsController < ApplicationController
  def random_greeting
    random_greeting = Message.order('RANDOM()').first
    render json: { message: random_greeting&.content }
  end
end
