require 'test_helper'

class HospitalRequestsControllerTest < ActionController::TestCase
  setup do
    @hospital_request = hospital_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_request" do
    assert_difference('HospitalRequest.count') do
      post :create, hospital_request: { email: @hospital_request.email, message: @hospital_request.message, name: @hospital_request.name, telephone: @hospital_request.telephone }
    end

    assert_redirected_to hospital_request_path(assigns(:hospital_request))
  end

  test "should show hospital_request" do
    get :show, id: @hospital_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_request
    assert_response :success
  end

  test "should update hospital_request" do
    patch :update, id: @hospital_request, hospital_request: { email: @hospital_request.email, message: @hospital_request.message, name: @hospital_request.name, telephone: @hospital_request.telephone }
    assert_redirected_to hospital_request_path(assigns(:hospital_request))
  end

  test "should destroy hospital_request" do
    assert_difference('HospitalRequest.count', -1) do
      delete :destroy, id: @hospital_request
    end

    assert_redirected_to hospital_requests_path
  end
end
