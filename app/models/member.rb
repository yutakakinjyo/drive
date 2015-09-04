# -*- coding: utf-8 -*-
class Member < ActiveRecord::Base

  def open_mgt(title, comment)
    mtg = Mtg.create(title: title, owner_id: self.id)
    mtg.post(comment, self.id)
  end

  def plan_event(title, comment)
    plan = EventPlan.create(title: title, owner_id: self.id)
    plan.post(comment, self.id)
  end

  def like(comment_id)
    Like.create(comment_id: comment_id, member_id: self.id)
  end

end
