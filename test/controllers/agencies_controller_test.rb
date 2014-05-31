require 'test_helper'

class AgenciesControllerTest < ActionController::TestCase
  setup do
    @agency = agencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agency" do
    assert_difference('Agency.count') do
      post :create, agency: { address_id: @agency.address_id, contact_email: @agency.contact_email, contact_name: @agency.contact_name, contact_phone: @agency.contact_phone, faith_based: @agency.faith_based, family_stipulations: @agency.family_stipulations, frequency: @agency.frequency, general_information: @agency.general_information, geographic_restrictions: @agency.geographic_restrictions, hours_of_operation: @agency.hours_of_operation, is_active: @agency.is_active, restrictions: @agency.restrictions, services: @agency.services }
    end

    assert_redirected_to agency_path(assigns(:agency))
  end

  test "should show agency" do
    get :show, id: @agency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agency
    assert_response :success
  end

  test "should update agency" do
    patch :update, id: @agency, agency: { address_id: @agency.address_id, contact_email: @agency.contact_email, contact_name: @agency.contact_name, contact_phone: @agency.contact_phone, faith_based: @agency.faith_based, family_stipulations: @agency.family_stipulations, frequency: @agency.frequency, general_information: @agency.general_information, geographic_restrictions: @agency.geographic_restrictions, hours_of_operation: @agency.hours_of_operation, is_active: @agency.is_active, restrictions: @agency.restrictions, services: @agency.services }
    assert_redirected_to agency_path(assigns(:agency))
  end

  test "should destroy agency" do
    assert_difference('Agency.count', -1) do
      delete :destroy, id: @agency
    end

    assert_redirected_to agencies_path
  end
end
