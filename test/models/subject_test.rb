# -*- coding: utf-8 -*-
require 'test_helper'

class SubjectTest < ActiveSupport::TestCase

  def setup
    @mtg = Event.mtg_planed(title: "タイトル", content: "no idea")
    @subject = @mtg.subjects.first
  end

  test "progress update" do
    @subject.progress_update({content: "MTG"})

    assert_equal "MTG", @subject.content
    assert_equal "no idea", @subject.prev_state_subject.content
  end

  test "many progress update" do

    @subject.progress_update({content: "MTG"})
    @subject.progress_update({content: "オフラインMTG"})

    assert_equal "オフラインMTG", @subject.content
    assert_equal "MTG",           @subject.prev_state_subject.content
    assert_equal "no idea",             @subject.prev_state_subject.prev_state_subject.content
  end

  test "display diff statement" do

    @subject.progress_update({content: "MTG"})
    @subject.progress_update({content: "オフラインMTG"})

    assert_equal "MTG",           @subject.param_diff[:content][:prev]
    assert_equal "オフラインMTG", @subject.param_diff[:content][:current]

  end

  test "display many diff statement" do

    @subject.progress_update({content: "MTG"})
    @subject.progress_update({content: "オフラインMTG"})
    @subject.progress_update({content: "オフラインMTG NEO", state: :UNDECIDED})

    assert_equal "MTG",           @subject.prev_state_subject.param_diff[:content][:prev]
    assert_equal "オフラインMTG", @subject.prev_state_subject.param_diff[:content][:current]
    assert_equal nil,             @subject.prev_state_subject.param_diff[:state]

    assert_equal "オフラインMTG",      @subject.param_diff[:content][:prev]
    assert_equal "オフラインMTG NEO",  @subject.param_diff[:content][:current]
    assert_equal "UNDECIDED",          @subject.param_diff[:state][:current]

  end


end
