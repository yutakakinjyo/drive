# -*- coding: utf-8 -*-
require 'test_helper'

class SubjectTest < ActiveSupport::TestCase

  def setup
    @mtg = Event.mtg_planed(title: "タイトル")
    @subject = @mtg.subjects.first
  end

  test "progress update" do
    @subject.progress_update({content: "MTG"})

    assert_equal "MTG", @subject.content
    assert_equal nil, @subject.prev_state_subject.content
  end

  test "many progress update" do

    @subject.progress_update({content: "MTG"})
    @subject.progress_update({content: "オフラインMTG"})

    assert_equal "オフラインMTG", @subject.content
    assert_equal "MTG",           @subject.prev_state_subject.content
    assert_equal nil,             @subject.prev_state_subject.prev_state_subject.content
  end


end
