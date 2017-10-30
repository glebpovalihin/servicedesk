class CreateComponentTriggers < ActiveRecord::Migration[5.1]
  def change
    create_table :component_triggers do |t|
      t.integer :issue_id
      t.integer :issue_component_id
      t.integer :event, default: 0
      t.integer :reaction_type, default: 0
      t.jsonb :selected_attributes
      t.timestamps
    end
  end
end
