class CreateAirplanes < ActiveRecord::Migration[6.0]
  def change
    create_table :airplanes do |t|
      t.string :model

      t.timestamps
    end
  end
end
