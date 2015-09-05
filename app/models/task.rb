class Task < ActiveRecord::Base
  belongs_to :event_plan
  belongs_to :assigned_member, class_name: 'Member'

  def assign_member(member)
    self.assigned_member = member
    self.save
  end

end
