require 'test_helper'

class ClinicProfilesControllerTest < ActionController::TestCase
  setup do
    @clinic_profile = clinic_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_profile" do
    assert_difference('ClinicProfile.count') do
      post :create, clinic_profile: { birthday: @clinic_profile.birthday, blood: @clinic_profile.blood, first_name: @clinic_profile.first_name, genre: @clinic_profile.genre, height: @clinic_profile.height, last_name: @clinic_profile.last_name, relationship: @clinic_profile.relationship, weight: @clinic_profile.weight }
    end

    assert_redirected_to clinic_profile_path(assigns(:clinic_profile))
  end

  test "should show clinic_profile" do
    get :show, id: @clinic_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_profile
    assert_response :success
  end

  test "should update clinic_profile" do
    patch :update, id: @clinic_profile, clinic_profile: { birthday: @clinic_profile.birthday, blood: @clinic_profile.blood, first_name: @clinic_profile.first_name, genre: @clinic_profile.genre, height: @clinic_profile.height, last_name: @clinic_profile.last_name, relationship: @clinic_profile.relationship, weight: @clinic_profile.weight }
    assert_redirected_to clinic_profile_path(assigns(:clinic_profile))
  end

  test "should destroy clinic_profile" do
    assert_difference('ClinicProfile.count', -1) do
      delete :destroy, id: @clinic_profile
    end

    assert_redirected_to clinic_profiles_path
  end
end
