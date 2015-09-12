require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  def setup
    @member = Member.create( provider: 'facebook', uid: '12345' )
    @request.env["omniauth.auth"] = { provider: 'facebook', uid: '12345', info: { name: "user" } }
  end


end
