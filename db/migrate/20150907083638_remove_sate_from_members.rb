class RemoveSateFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :state, :integer
  end
end
