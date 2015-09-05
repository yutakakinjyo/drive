class Issue < ActiveRecord::Base
  has_many :comments
  belongs_to :owner, class_name: 'Member'

  def post(content, member_id)
    Comment.create(content: content, member_id: member_id, issue_id: self.id)
  end

end
