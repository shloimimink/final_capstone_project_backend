class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :text
      t.integer :user_id
      t.integer :airplane_id

      t.timestamps
    end
  end
end
