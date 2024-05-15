class RemoveUserIdAndAddClientIdToMessages < ActiveRecord::Migration[7.1]
  def change
    remove_column :messages, :user_id
    add_column :messages, :client_id, :integer
  end
end
