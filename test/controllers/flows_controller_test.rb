require 'test_helper'

class FlowsControllerTest < ActionController::TestCase
  setup do
    @flow = flows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flow" do
    assert_difference('Flow.count') do
      post :create, flow: { active: @flow.active, name: @flow.name }
    end

    assert_redirected_to flow_path(assigns(:flow))
  end

  test "should show flow" do
    get :show, id: @flow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flow
    assert_response :success
  end

  test "should update flow" do
    patch :update, id: @flow, flow: { active: @flow.active, name: @flow.name }
    assert_redirected_to flow_path(assigns(:flow))
  end

  test "should destroy flow" do
    assert_difference('Flow.count', -1) do
      delete :destroy, id: @flow
    end

    assert_redirected_to flows_path
  end
end
