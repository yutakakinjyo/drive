class Comment < ActiveRecord::Base
  belongs_to :issue
  belongs_to :member
  has_many :likes

  def liked(member)
    Like.create(comment_id: self.id, member_id: member.id)
  end

end
