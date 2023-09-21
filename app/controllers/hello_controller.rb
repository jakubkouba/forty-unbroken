class HelloController < ApplicationController
  def index
    render json: { message: "Hello World. I'm alive" }
  end
end
