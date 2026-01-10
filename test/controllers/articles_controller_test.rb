require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "get index" do
    get articles_url

    assert_response :success
    assert_match articles(:one).title, @response.body
    assert_match articles(:two).title, @response.body
  end
end
