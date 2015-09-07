class Community < ActiveRecord::Base

  has_many :member_lists
  has_many :members, through: :member_lists

  validates :name, presence: true

  def joined(member)
    member.state = :joined
  end

  def leaved(member)
    member.state = :leaved
  end

end
