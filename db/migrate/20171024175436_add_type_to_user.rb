class AddTypeToUser < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :type, :string
    add_column :users, :account_id, :integer
  end

  def down
    remove_column :users, :type
    remove_column :users, :account_id
  end
end
