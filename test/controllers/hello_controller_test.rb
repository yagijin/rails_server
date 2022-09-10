# frozen_string_literal: true

require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test '#index return HelloWorld' do
    get :index
    assert_response :success
    assert_equal 'HelloWold', JSON.parse(response.body)['data']
  end
end
