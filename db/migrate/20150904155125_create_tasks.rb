class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :event_plan_id
      t.string :content
      t.integer :assigned_member

      t.timestamps null: false
    end
  end
end
