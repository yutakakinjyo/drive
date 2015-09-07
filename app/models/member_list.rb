class MemberList < ActiveRecord::Base
  belongs_to :community
  belongs_to :member

  enum state: [:joined, :leaved]

end
