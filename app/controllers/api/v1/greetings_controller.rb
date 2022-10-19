class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all.sample.message
    render json: { message: 'NO data yet', status: 404 } unless @greetings.present?
    render json: { message: @greetings, status: :ok }
  end
end
