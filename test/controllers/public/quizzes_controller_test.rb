require 'test_helper'

class Public::QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_quizzes_new_url
    assert_response :success
  end

  test "should get show" do
    get public_quizzes_show_url
    assert_response :success
  end

end
