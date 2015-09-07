require 'test_helper'

class IssueTest < ActiveSupport::TestCase

  test "valid error title" do
    assert Issue.create.invalid?
 end

end
