class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.integer :mtg_id
      t.integer :member_id

      t.timestamps null: false
    end
  end
end
