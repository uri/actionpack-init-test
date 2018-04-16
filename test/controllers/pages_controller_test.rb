require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  i_suck_and_my_tests_are_order_dependent!

  test "01 - should have the X-My-Header header" do
    get pages_url
    assert response.headers['X-My-Header']
  end

  test "02 - needs to manually set ActionDispatch::Response.default_headers to get X-My-Header" do
    ActionDispatch::Response.default_headers = Rails.application.config.action_dispatch.default_headers
    get pages_url
    assert response.headers['X-My-Header']
  end
end
