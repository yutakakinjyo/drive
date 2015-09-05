class AddColumnStateToMember < ActiveRecord::Migration
  def change
    add_column :members, :state, :integer
  end
end
