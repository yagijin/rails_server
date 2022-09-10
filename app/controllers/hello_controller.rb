# frozen_string_literal: true

# 挨拶を返すコントローラー
class HelloController < ApplicationController
  def index
    render json: { data: 'HelloWorld' }
  end
end
