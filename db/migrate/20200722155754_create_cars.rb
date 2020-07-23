class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :manufacture
      t.string :make
      t.string :model
      t.string :color
      t.string :drive_type
      t.string :car_options

      t.timestamps
    end
  end
end
