# frozen_string_literal: true

#
# Pilgrim - A Lightweight And Powerful Control Panel, Set up in Minutes.
#
# Copyright 2020 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.
#

require "test_helper"

class Api::HealthControllerTest < ActionDispatch::IntegrationTest
  test "should get health" do
    get "/_health"
    assert_response :success
    assert_equal '{"status":"ok"}', @response.body
    assert_equal 'application/json; charset=utf-8', @response.header["Content-Type"]
    assert_not_empty @response.header["X-Request-Id"]
  end
end
