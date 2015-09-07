require 'test_helper'

class CommunityTest < ActiveSupport::TestCase

  def setup
    @community = Community.create
    @member = Member.create
  end

  test "invalid name" do 
    assert Community.create.invalid?
  end

  test "valid name" do 
    assert Community.create(name: "example community").valid?
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
