class Comment < ActiveRecord::Base
  belongs_to :issue
  belongs_to :member
  has_many :likes

  def liked(member)
    Like.create(comment: self, member: member)
  end

end
