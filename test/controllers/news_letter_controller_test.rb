require "test_helper"

class NewsLetterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get news_letter_index_url
    assert_response :success
  end

  test "should get new" do
    get news_letter_new_url
    assert_response :success
  end

  test "should get create" do
    get news_letter_create_url
    assert_response :success
  end
end
