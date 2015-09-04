class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.integer :owner
      t.date :date
      t.string :place
      t.string :type

      t.timestamps null: false
    end
  end
end
