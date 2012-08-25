require 'test_helper'

class StartupsControllerTest < ActionController::TestCase
  setup do
    @startup = startups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup" do
    assert_difference('Startup.count') do
      post :create, startup: { amtraised: @startup.amtraised, city: @startup.city, industry: @startup.industry, mininvest: @startup.mininvest, name: @startup.name, numemp: @startup.numemp, state: @startup.state, targetamt: @startup.targetamt, website: @startup.website, yearfounded: @startup.yearfounded }
    end

    assert_redirected_to startup_path(assigns(:startup))
  end

  test "should show startup" do
    get :show, id: @startup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup
    assert_response :success
  end

  test "should update startup" do
    put :update, id: @startup, startup: { amtraised: @startup.amtraised, city: @startup.city, industry: @startup.industry, mininvest: @startup.mininvest, name: @startup.name, numemp: @startup.numemp, state: @startup.state, targetamt: @startup.targetamt, website: @startup.website, yearfounded: @startup.yearfounded }
    assert_redirected_to startup_path(assigns(:startup))
  end

  test "should destroy startup" do
    assert_difference('Startup.count', -1) do
      delete :destroy, id: @startup
    end

    assert_redirected_to startups_path
  end
end
