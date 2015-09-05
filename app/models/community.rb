class Community < ActiveRecord::Base

  def joined(member)
    member.state = :joined
  end

  def leaved(member)
    member.state = :leaved
  end

end
