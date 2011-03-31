require 'test_helper'

class ModelImagesControllerTest < ActionController::TestCase
  setup do
    @model_image = model_images(:one)
    @update = {
        :image_url => 'images/frame_5_model.png',
        :gender   => 'male'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_image" do
    assert_difference('ModelImage.count') do
      post :create, :model_image => @update #@model_image.attributes
    end

    assert_redirected_to model_image_path(assigns(:model_image))
  end

  test "should show model_image" do
    get :show, :id => @model_image.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @model_image.to_param
    assert_response :success
  end

  test "should update model_image" do
    put :update, :id => @model_image.to_param, :model_image => @update#@model_image.attributes
    assert_redirected_to model_image_path(assigns(:model_image))
  end

  test "should destroy model_image" do
    assert_difference('ModelImage.count', -1) do
      delete :destroy, :id => @model_image.to_param
    end

    assert_redirected_to model_images_path
  end
end
