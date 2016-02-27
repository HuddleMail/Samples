require 'test_helper'

class DisGroupsControllerTest < ActionController::TestCase
  setup do
    @dis_group = dis_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dis_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dis_group" do
    assert_difference('DisGroup.count') do
      post :create, dis_group: { disname: @dis_group.disname }
    end

    assert_redirected_to dis_group_path(assigns(:dis_group))
  end

  test "should show dis_group" do
    get :show, id: @dis_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dis_group
    assert_response :success
  end

  test "should update dis_group" do
    patch :update, id: @dis_group, dis_group: { disname: @dis_group.disname }
    assert_redirected_to dis_group_path(assigns(:dis_group))
  end

  test "should destroy dis_group" do
    assert_difference('DisGroup.count', -1) do
      delete :destroy, id: @dis_group
    end

    assert_redirected_to dis_groups_path
  end
end
