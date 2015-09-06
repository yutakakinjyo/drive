class AddColumnToMember < ActiveRecord::Migration
  def change
    add_column :members, :provider, :string
    add_column :members, :uid, :string
    add_column :members, :email, :string
  end
end
