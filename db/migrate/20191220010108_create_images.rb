class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :url
      t.integer :airplane_id
      t.integer :user_id

      t.timestamps
    end
  end
end
