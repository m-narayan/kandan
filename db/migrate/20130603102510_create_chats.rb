class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.integer :channel_id
      t.integer :user_id
      t.boolean :status
      t.timestamps
    end
  end
end
