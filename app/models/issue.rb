class Issue < ActiveRecord::Base

  has_many :comments
  belongs_to :owner, class_name: 'Member'

  validates :title, presence: true

  def post(content, member)
    Comment.create(content: content, member: member, issue: self)
  end

end
