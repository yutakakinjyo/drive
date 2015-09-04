class Comment < ActiveRecord::Base
  belongs_to :issue
  belongs_to :member
  has_many :like
end
