require 'test_helper'

class TopicCommentsControllerTest < ActionController::TestCase
  setup do
    @topic_comment = topic_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topic_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic_comment" do
    assert_difference('TopicComment.count') do
      post :create, topic_comment: { message: @topic_comment.message, response_to: @topic_comment.response_to }
    end

    assert_redirected_to topic_comment_path(assigns(:topic_comment))
  end

  test "should show topic_comment" do
    get :show, id: @topic_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topic_comment
    assert_response :success
  end

  test "should update topic_comment" do
    patch :update, id: @topic_comment, topic_comment: { message: @topic_comment.message, response_to: @topic_comment.response_to }
    assert_redirected_to topic_comment_path(assigns(:topic_comment))
  end

  test "should destroy topic_comment" do
    assert_difference('TopicComment.count', -1) do
      delete :destroy, id: @topic_comment
    end

    assert_redirected_to topic_comments_path
  end
end
