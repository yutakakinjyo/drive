require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  def setup
    @member = Member.create
    @issue = Issue.create(title: "issue", owner: @member)

    @comment = Comment.create(issue: @issue, member: @member)
    @member1 = Member.create
    @member2 = Member.create
  end

  test "invalid issue" do
    assert Comment.create(issue: nil, member: @member).invalid?
  end

  test "invalid member" do
    assert Comment.create(issue: @issue, member: nil).invalid?
  end

  test "valid member" do
    assert Comment.create(issue: @issue, member: @member).valid?
  end

  test "liked" do
    @comment.liked(@member1)
    @comment.liked(@member2)
    
    assert_not_nil @comment.likes
    assert_equal @member1, @comment.likes.first.member
    assert_equal @member2, @comment.likes.second.member

  end
end
