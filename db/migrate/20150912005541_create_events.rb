class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :community_id
      t.integer :owner_id
      t.integer :conference_id
      t.string :type

      t.timestamps null: false
    end
  end
end
