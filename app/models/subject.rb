class Subject < ActiveRecord::Base

  belongs_to :event
  belongs_to :owner, class_name: 'Member'
  belongs_to :prev_state_subject, class_name: 'Subject'

  enum state: [:UNDECIDED, :READY, :DECIDED]

  def progress_update(params)
    prev = self.copy_create
    self.prev_state_subject = prev
    self.update(params)
  end

  def copy_create
    Subject.create(title: self.title, content: self.content, 
                   state: self.state, prev_state_subject: self.prev_state_subject)
  end  

end

