require 'test_helper'

class MemberTest < ActiveSupport::TestCase

  def setup 
    @member = Member.create(name: "yutaka")
    @community = Community.create(name: "example community")
  end

  test "join community" do
    @member.join(@community)

    assert_equal @member, @community.members.first
    assert @community.member_lists.first.joined?
  end

  test "leave community" do
    @member.join(@community)
    @member.leave(@community)

    assert_equal @member, @community.members.first
    assert @community.member_lists.first.leaved?
  end

  test "rejoin community" do
    @member.join(@community)
    @member.leave(@community)
    @member.join(@community)

    assert_equal 1, @community.members.count
    assert_equal @member, @community.members.first
    assert @community.member_lists.first.joined?
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

  test "create member account" do

    auth_hash =  { provider: 'facebook', uid: '12345', info: { name: "user" } }    
    member = Member.find_or_create_from_auth_hash(auth_hash)
    
    assert_equal 'facebook', member.provider
    assert_equal '12345', member.uid
    assert_equal 'user', member.name
  end

  test "find already exist member account" do

    member = Member.create( provider: 'facebook', uid: '12345', name: "user" )
    auth_hash =  { provider: 'facebook', uid: '12345', info: { name: "user" } }    

    find_member = Member.find_or_create_from_auth_hash(auth_hash)

    assert_equal member, find_member

  end

end
