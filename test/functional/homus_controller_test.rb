require 'test_helper'

class HomusControllerTest < ActionController::TestCase
  setup do
    @homu = homus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homu" do
    assert_difference('Homu.count') do
      post :create, homu: {  }
    end

    assert_redirected_to homu_path(assigns(:homu))
  end

  test "should show homu" do
    get :show, id: @homu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homu
    assert_response :success
  end

  test "should update homu" do
    put :update, id: @homu, homu: {  }
    assert_redirected_to homu_path(assigns(:homu))
  end

  test "should destroy homu" do
    assert_difference('Homu.count', -1) do
      delete :destroy, id: @homu
    end

    assert_redirected_to homus_path
  end
end
