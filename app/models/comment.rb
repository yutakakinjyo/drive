class Comment < ActiveRecord::Base
  belongs_to :issue
  belongs_to :member
  has_many :likes

  validates :issue, presence: true
  validates :member, presence: true

  def liked(member)
    Like.create(comment: self, member: member)
  end

end
