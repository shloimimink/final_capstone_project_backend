class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :profile_picture
      t.string :location
      t.string :seat_preference
      t.string :class_preference
      t.string :airport_preference
      t.integer :airline_id

      t.timestamps
    end
  end
end
