require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  def setup
    session[:member_id] = Member.create(name: "user").id
  end


end
