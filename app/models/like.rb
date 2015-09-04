class Like < ActiveRecord::Base
  has_many :comment
  has_many :member
end
