require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  def setup
  end

  test "redirect front page to authentication" do
    get :index
    assert_response :redirect
  end

  test "succuess front page to authentication" do
    session[:member_id] = Member.create(name: "user").id
    get :index
    assert_response :success
  end


end
