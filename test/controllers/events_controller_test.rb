# -*- coding: utf-8 -*-
require 'test_helper'

class EventsControllerTest < ActionController::TestCase

  def setup
    session[:member_id] = Member.create
    c = Community.create(name: "Java Kueche")
    @e = Event.mtg_planed(title: "タイトル", content: "MTG", community: c)
  end

  test "should get show" do
    get :show, id: @e.id
    assert_response :success
  end

end
