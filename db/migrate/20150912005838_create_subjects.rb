class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :content
      t.integer :state
      t.integer :event_id
      t.integer :owner_id
      t.integer :assign_member_id
      t.integer :prev_state_subject_id

      t.timestamps null: false
    end
  end
end
