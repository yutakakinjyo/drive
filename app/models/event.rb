class Event < ActiveRecord::Base

  belongs_to :community
  belongs_to :owner, class_name: 'Member'
  has_many :subjects
  accepts_nested_attributes_for :subjects

  def self.mtg_planed(title: nil, content: nil, state: nil, owner: nil, community: nil)
    mtg = Mtg.create(owner: owner, community: community)
    Subject.create(title: title, content: content, state: state, owner: owner, event_id: mtg.id)
    mtg
  end

end
