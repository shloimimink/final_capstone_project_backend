class CreateAirlines < ActiveRecord::Migration[6.0]
  def change
    create_table :airlines do |t|
      t.string :name
      t.string :class_type

      t.timestamps
    end
  end
end
