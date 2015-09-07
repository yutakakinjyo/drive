require 'test_helper'

class IssueTest < ActiveSupport::TestCase

  test "invalid title" do
    assert Issue.create(title: nil, owner: Member.create).invalid?
 end

  test "invalid owner" do
    assert Issue.create(title: "issue", owner: nil).invalid?
 end

  test "valid issue parameter" do
    assert Issue.create(title: "issue", owner: Member.create).valid?
 end


end
