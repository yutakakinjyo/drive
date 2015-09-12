class Event < ActiveRecord::Base

  belongs_to :owner, class_name: 'Member'
  has_many :subjects

  def self.mtg_planed(title: nil, comment: nil, state: nil, owner: nil)
    mtg = Mtg.create(owner: owner)
    Subject.create(title: title, content: comment, state: state, owner: owner, event_id: mtg.id)
    mtg
  end

end
