require 'test_helper'

class EventPlanTest < ActiveSupport::TestCase

  def setup
    @plan = EventPlan.create(title: "example conference", owner: Member.create)
  end

  test "set task" do
   @plan.set_task("reserve place")
    
    assert_not_nil Task.first
    assert_equal "reserve place", @plan.tasks.first.content
  end

  test "set sponcer" do
    @plan.set_sponcer("example company")
    
    refute_nil Sponsor.first
    assert_equal "example company", @plan.sponsors.first.name
  end


end
