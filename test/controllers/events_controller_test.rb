# -*- coding: utf-8 -*-
require 'test_helper'

class EventsControllerTest < ActionController::TestCase

  def setup
    session[:member_id] = Member.create
    @community = Community.create(name: "Java Kueche")
    @event = Event.mtg_planed(title: "タイトル", content: "MTG", community: @community)
  end

  test "should get show" do
    get :show, id: @event.id
    assert_equal @event.id, assigns(:event).id
    assert_not_nil @event.subjects.first
    assert_response :success
  end

  test "should redirect to event page" do
    post :create, mtg: { community_id: @community.id,  subjects_attributes: { "0" => {title: "title", content: "hoge"} } }

    assert_equal 'title', assigns(:event).subjects.first.title
    assert_equal 'hoge',  assigns(:event).subjects.first.content
    assert_redirected_to event_path(assigns(:event))
  end

  test "should render mtg new page" do
    post :create, mtg: { community_id: @community.id,  subjects_attributes: { "0" => {title: nil, content: "hoge"} } }

    assert_equal nil, assigns(:event).subjects.first.title
    assert_equal 'hoge',  assigns(:event).subjects.first.content
    # assert_redirected_to events_mtg_new_path
  end



end
