class CreateIssueComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_components do |t|
      t.string :name, null: false
      t.string :description
      t.integer :execution_time
      t.integer :issue_id
      t.integer :previous_component_id
      t.integer :next_component_id
      t.boolean :current_state?
      t.timestamps
    end
  end
end
