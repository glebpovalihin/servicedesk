class CreateIssueExemplars < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_exemplars do |t|
      t.integer :user_id
      t.boolean :processed
      t.integer :current_state_id
      t.timestamps
    end
  end
end
