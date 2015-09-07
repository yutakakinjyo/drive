# -*- coding: utf-8 -*-
class Member < ActiveRecord::Base

  enum state: [:joined, :leaved]

  def join(community)
    member_list = MemberList.find_or_create_by(member: self, community: community)
    member_list.state = :joined
    member_list.save
  end

  def leave(community)
    member_list = MemberList.find_by(member: self, community: community)
    member_list.state = :leaved
    member_list.save
  end

  def open_mtg(title, comment)
    mtg = Mtg.create(title: title, owner: self)
    mtg.post(comment, self)
  end

  def plan_event(title, comment)
    plan = EventPlan.create(title: title, owner: self)
    plan.post(comment, self)
  end

  def self.find_or_create_from_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    name = auth_hash[:info][:name]

    Member.find_or_create_by(provider: provider, uid: uid) do |member|
      member.name = name
    end
  end

end
