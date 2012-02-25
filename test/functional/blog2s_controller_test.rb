require 'test_helper'

class Blog2sControllerTest < ActionController::TestCase
  setup do
    @blog2 = blog2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog2" do
    assert_difference('Blog2.count') do
      post :create, blog2: @blog2.attributes
    end

    assert_redirected_to blog2_path(assigns(:blog2))
  end

  test "should show blog2" do
    get :show, id: @blog2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog2
    assert_response :success
  end

  test "should update blog2" do
    put :update, id: @blog2, blog2: @blog2.attributes
    assert_redirected_to blog2_path(assigns(:blog2))
  end

  test "should destroy blog2" do
    assert_difference('Blog2.count', -1) do
      delete :destroy, id: @blog2
    end

    assert_redirected_to blog2s_path
  end
end
