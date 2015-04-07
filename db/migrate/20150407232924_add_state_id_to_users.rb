class AddStateIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :state_id, :integer
    remove_column :states, :user_id, :integer
  end
end
