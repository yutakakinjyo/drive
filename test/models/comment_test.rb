require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  def setup
    @member = Member.create
    @event = Conference.create(title: "issue", owner: @member)

    @comment = Comment.create(issue: @event, member: @member)
    @member1 = Member.create
    @member2 = Member.create
  end


end
