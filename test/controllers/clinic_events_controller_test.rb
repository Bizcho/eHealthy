require 'test_helper'

class ClinicEventsControllerTest < ActionController::TestCase
  setup do
    @clinic_event = clinic_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_event" do
    assert_difference('ClinicEvent.count') do
      post :create, clinic_event: { date_finish: @clinic_event.date_finish, date_start: @clinic_event.date_start, diagnostic: @clinic_event.diagnostic, prediagnostic: @clinic_event.prediagnostic, prescription: @clinic_event.prescription, symptoms: @clinic_event.symptoms }
    end

    assert_redirected_to clinic_event_path(assigns(:clinic_event))
  end

  test "should show clinic_event" do
    get :show, id: @clinic_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_event
    assert_response :success
  end

  test "should update clinic_event" do
    patch :update, id: @clinic_event, clinic_event: { date_finish: @clinic_event.date_finish, date_start: @clinic_event.date_start, diagnostic: @clinic_event.diagnostic, prediagnostic: @clinic_event.prediagnostic, prescription: @clinic_event.prescription, symptoms: @clinic_event.symptoms }
    assert_redirected_to clinic_event_path(assigns(:clinic_event))
  end

  test "should destroy clinic_event" do
    assert_difference('ClinicEvent.count', -1) do
      delete :destroy, id: @clinic_event
    end

    assert_redirected_to clinic_events_path
  end
end
