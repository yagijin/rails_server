# frozen_string_literal: true

class HelloController < ApplicationController
  def index
    render json: { data: 'HelloWorld' }
  end
end
