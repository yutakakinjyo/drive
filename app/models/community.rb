class Community < ActiveRecord::Base

  has_many :member_lists
  has_many :events
  has_many :members, through: :member_lists

  validates :name, presence: true

end
