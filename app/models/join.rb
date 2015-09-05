class Join < ActiveRecord::Base
  belongs_to :mtg
  belongs_to :member
end
