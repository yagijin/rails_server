class HelloController < ApplicationController
  def index
    render json: { data: 'HelloWorld' }
  end
end
