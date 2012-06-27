require 'test_helper'

class MainmenusControllerTest < ActionController::TestCase
  setup do
    @mainmenu = mainmenus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mainmenus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mainmenu" do
    assert_difference('Mainmenu.count') do
      post :create, :mainmenu => @mainmenu.attributes
    end

    assert_redirected_to mainmenu_path(assigns(:mainmenu))
  end

  test "should show mainmenu" do
    get :show, :id => @mainmenu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mainmenu.to_param
    assert_response :success
  end

  test "should update mainmenu" do
    put :update, :id => @mainmenu.to_param, :mainmenu => @mainmenu.attributes
    assert_redirected_to mainmenu_path(assigns(:mainmenu))
  end

  test "should destroy mainmenu" do
    assert_difference('Mainmenu.count', -1) do
      delete :destroy, :id => @mainmenu.to_param
    end

    assert_redirected_to mainmenus_path
  end
end
