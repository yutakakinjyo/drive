# -*- coding: utf-8 -*-
require 'test_helper'

class EventsControllerTest < ActionController::TestCase

  def setup
    session[:member_id] = Member.create
    community = Community.create(name: "Java Kueche")
    @event = Event.mtg_planed(title: "タイトル", content: "MTG", community: community)
  end

  test "should get show" do
    get :show, id: @event.id
    assert_equal @event.id, assigns(:event).id
    assert_not_nil @event.subjects.first
    assert_response :success
  end

end
