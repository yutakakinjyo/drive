require 'test_helper'

class MemberTest < ActiveSupport::TestCase

  def setup 
    @member = Member.create(name: "yutaka")
  end

  test "open mgt" do
    @member.open_mtg("off site mtg","I will open mtg")
    mtg = Mtg.first

    refute_nil mtg
    assert_equal "off site mtg", mtg.title
    assert_equal "I will open mtg", mtg.comments.first.content
    assert_equal mtg.owner, @member
  end

  test "plan event" do
    @member.plan_event("db conference", "I have plan")
    plan = EventPlan.first

    assert_equal "db conference", plan.title
    assert_equal "I have plan", plan.comments.first.content
    assert_equal plan.owner, @member
  end  

end
