require 'test_helper'

class MtgTest < ActiveSupport::TestCase

  def setup
    @mtg = Event.mtg_planed(title: "start meeting", owner: Member.create)
    @member1 = Member.create
    @member2 = Member.create
  end

  test "joined" do
    @mtg.joined(@member1)
    @mtg.joined(@member2)

    assert_equal @member1, @mtg.members.first
    assert_equal @member2, @mtg.members.second
  end


end
