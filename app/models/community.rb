class Community < ActiveRecord::Base

  validates :name, presence: true

  def joined(member)
    member.state = :joined
  end

  def leaved(member)
    member.state = :leaved
  end

end
