class CreateIssueStates < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_states do |t|
      t.integer :issue_component_id, null: false
      t.integer :issue_id, null: false
      t.integer :next_state_id
      t.integer :previous_state_id
      t.boolean :current_state?, default: false
      t.timestamps
    end
  end
end
