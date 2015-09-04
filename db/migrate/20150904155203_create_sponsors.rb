class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.integer :event_plan_id
      t.string :name

      t.timestamps null: false
    end
  end
end
