class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :owner
      t.integer :conference_id
      t.string :type

      t.timestamps null: false
    end
  end
end
