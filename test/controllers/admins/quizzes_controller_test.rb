require 'test_helper'

class Admins::QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_quizzes_index_url
    assert_response :success
  end

  test "should get edit" do
    get admins_quizzes_edit_url
    assert_response :success
  end

end
