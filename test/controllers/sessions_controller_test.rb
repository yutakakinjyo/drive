require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  def setup
    @member = Member.create( provider: 'facebook', uid: '12345' )
    @request.env["omniauth.auth"] = { provider: 'facebook', uid: '12345', info: { name: "user" } }
  end

  test "should exist member id key in session" do
    get :create
    assert_response :redirect
    assert_equal @member.id, session[:member_id]
    assert_redirected_to root_path
  end

  test "should not exist member id in session" do
    get :destroy
    assert_response :redirect
    assert_nil session[:member_id]
    assert_redirected_to root_path
  end

end
