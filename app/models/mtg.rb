class Mtg < Event

  has_many :joins
  has_many :members, through: :joins

  def joined(member)
    Join.create(member: member, mtg: self)
  end

end
