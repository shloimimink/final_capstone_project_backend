class CreateAirplaneUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :airplane_users do |t|
      t.integer :airplane_id
      t.integer :user_id

      t.timestamps
    end
  end
end
