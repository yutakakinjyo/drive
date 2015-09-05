# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

m = Member.create(name: "yutaka")
m.open_mtg("会議しようぜ", "明日はどう？")

event = m.plan_event("勉強会しようぜ", "いつやりましょう？")
event.comments.first.liked(m.id)

task = event.set_task("会場")
task.assign_member(m);
