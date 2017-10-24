class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :name, null: false
      t.integer :time_total, default: 0
      t.timestamps
    end
  end
end
