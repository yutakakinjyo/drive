require 'test_helper'

class CommunityTest < ActiveSupport::TestCase

  def setup
    @community = Community.create
    @member = Member.create
  end

  test "joined" do
    @community.joined(@member)

    assert @member.joined?
  end

  test "leaved" do
    @community.leaved(@member)

    assert @member.leaved?
  end

end
