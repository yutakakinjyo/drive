# -*- coding: utf-8 -*-
class Member < ActiveRecord::Base

  enum state: [:joined, :leaved]

  def open_mtg(title, comment)
    mtg = Mtg.create(title: title, owner: self)
    mtg.post(comment, self)
  end

  def plan_event(title, comment)
    plan = EventPlan.create(title: title, owner: self)
    plan.post(comment, self)
  end

end
