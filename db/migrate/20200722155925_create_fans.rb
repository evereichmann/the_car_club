class CreateFans < ActiveRecord::Migration[6.0]
  def change
    create_table :fans do |t|
      t.string :name
      t.integer :age
      t.string :job
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
