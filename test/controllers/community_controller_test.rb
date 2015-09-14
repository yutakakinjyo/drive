require 'test_helper'

class CommunityControllerTest < ActionController::TestCase

  def setup
    session[:member_id] = Member.create.id
    @community = Community.create(name: "Java Kueche")
    
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

  test "should get show" do
    get :show, id: @community.id
    assert_response :success
  end

end
