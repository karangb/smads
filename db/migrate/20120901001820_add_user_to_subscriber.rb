class AddUserToSubscriber < ActiveRecord::Migration
  def change
    add_column :subscribers, :user_id, :integer
  end
end
