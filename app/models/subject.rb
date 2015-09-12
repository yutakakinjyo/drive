class Subject < ActiveRecord::Base

  belongs_to :event
  belongs_to :owner, class_name: 'Member'

  enum state: [:UNDECIDED, :READY, :DECIDED]

end
