require 'test_helper'

class HelpsControllerTest < ActionController::TestCase
  setup do
    @help = helps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create help" do
    assert_difference('Help.count') do
      post :create, help: { comment: @help.comment, email: @help.email, end_date: @help.end_date, name: @help.name, start_date: @help.start_date }
    end

    assert_redirected_to help_path(assigns(:help))
  end

  test "should show help" do
    get :show, id: @help
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @help
    assert_response :success
  end

  test "should update help" do
    put :update, id: @help, help: { comment: @help.comment, email: @help.email, end_date: @help.end_date, name: @help.name, start_date: @help.start_date }
    assert_redirected_to help_path(assigns(:help))
  end

  test "should destroy help" do
    assert_difference('Help.count', -1) do
      delete :destroy, id: @help
    end

    assert_redirected_to helps_path
  end
end
