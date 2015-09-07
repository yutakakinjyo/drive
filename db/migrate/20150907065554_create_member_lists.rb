class CreateMemberLists < ActiveRecord::Migration
  def change
    create_table :member_lists do |t|
      t.integer :community_id
      t.integer :member_id
      t.integer :state

      t.timestamps null: false
    end
  end
end
