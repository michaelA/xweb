require 'test_helper'

class EyeGlassesControllerTest < ActionController::TestCase
  setup do
    @eye_glass = eye_glasses(:one)
    @update = {
        :name => 'terry Co',
        :material    => 'plastic',
        :color      => 'white',
        :shape      => 'square',
        :price      => 29.12,
        :who_can_wear => 'female',
        :image_url => 'images/frame_1_model.png',
        :frame_url => 'images/frame_1.pgn'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eye_glasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eye_glass" do
    assert_difference('EyeGlass.count') do
      post :create, :eye_glass => @update # @eye_glass.attributes
    end

    assert_redirected_to eye_glass_path(assigns(:eye_glass))
  end

  test "should show eye_glass" do
    get :show, :id => @eye_glass.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @eye_glass.to_param
    assert_response :success
  end

  test "should update eye_glass" do
    put :update, :id => @eye_glass.to_param, :eye_glass => @update#@eye_glass.attributes
    assert_redirected_to eye_glass_path(assigns(:eye_glass))
  end

  test "should destroy eye_glass" do
    assert_difference('EyeGlass.count', -1) do
      delete :destroy, :id => @eye_glass.to_param
    end

    assert_redirected_to eye_glasses_path
  end
end
