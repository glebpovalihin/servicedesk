class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.integer :issues_count, default: 1
      t.timestamps
    end
  end
end
