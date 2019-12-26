class CreateAirlineAirplanes < ActiveRecord::Migration[6.0]
  def change
    create_table :airline_airplanes do |t|
      t.integer :airline_id
      t.integer :airplane_id

      t.timestamps
    end
  end
end
