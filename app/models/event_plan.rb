class EventPlan < Issue
  has_many :tasks
  has_many :sponsors

  def set_task(content)
    Task.create(content: content, event_plan_id: self.id)
  end

  def set_sponcer(name)
    Sponsor.create(name: name, event_plan_id: self.id)
  end

end
