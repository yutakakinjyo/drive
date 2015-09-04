class RenameOwnerColumnToIssues < ActiveRecord::Migration
  def change
    rename_column :issues, :owner, :owner_id
  end
end
