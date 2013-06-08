class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :api_key

      t.timestamps
    end
  end
end
