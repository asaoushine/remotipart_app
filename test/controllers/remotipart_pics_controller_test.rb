require 'test_helper'

class RemotipartPicsControllerTest < ActionController::TestCase
  setup do
    @remotipart_pic = remotipart_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remotipart_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remotipart_pic" do
    assert_difference('RemotipartPic.count') do
      post :create, remotipart_pic: { description: @remotipart_pic.description, title: @remotipart_pic.title, topimage: @remotipart_pic.topimage }
    end

    assert_redirected_to remotipart_pic_path(assigns(:remotipart_pic))
  end

  test "should show remotipart_pic" do
    get :show, id: @remotipart_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remotipart_pic
    assert_response :success
  end

  test "should update remotipart_pic" do
    patch :update, id: @remotipart_pic, remotipart_pic: { description: @remotipart_pic.description, title: @remotipart_pic.title, topimage: @remotipart_pic.topimage }
    assert_redirected_to remotipart_pic_path(assigns(:remotipart_pic))
  end

  test "should destroy remotipart_pic" do
    assert_difference('RemotipartPic.count', -1) do
      delete :destroy, id: @remotipart_pic
    end

    assert_redirected_to remotipart_pics_path
  end
end
