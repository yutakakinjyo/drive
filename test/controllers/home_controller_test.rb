require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  def setup
    session[:member_id] = Member.create(name: "user").id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issues)
    assert_not_nil assigns(:new_issue)
  end

end
