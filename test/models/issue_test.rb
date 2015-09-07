require 'test_helper'

class IssueTest < ActiveSupport::TestCase

  test "valid error title" do
    refute Issue.create.valid?
 end

end
