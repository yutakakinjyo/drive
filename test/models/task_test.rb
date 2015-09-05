require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  def setup
    @task = Task.create(content: "reserve place") 
  end

  test "create task" do
    refute_nil @task
    assert_equal "reserve place", @task.content
  end

  test "assign member" do
    @task.assign_member(Member.create(name: "yutaka"))
    refute_nil @task.assigned_member
    assert_equal "yutaka", @task.assigned_member.name
  end

end
