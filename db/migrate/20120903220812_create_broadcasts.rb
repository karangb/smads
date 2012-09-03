class CreateBroadcasts < ActiveRecord::Migration
  def change
    create_table :broadcasts do |t|
      t.string :message

      t.timestamps
    end
  end
end
