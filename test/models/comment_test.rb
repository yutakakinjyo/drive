require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  def setup
    @comment = Comment.create
    @member1 = Member.create
    @member2 = Member.create
  end

  test "liked" do
    @comment.liked(@member1)
    @comment.liked(@member2)
    
    refute_nil @comment.likes
    assert_equal @member1, @comment.likes.first.member
    assert_equal @member2, @comment.likes.second.member

  end
end
