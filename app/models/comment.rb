class Comment < ActiveRecord::Base
  belongs_to :event
  belongs_to :member
  has_many :likes

  validates :event, presence: true
  validates :member, presence: true

end
