class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.text :name
      t.boolean :operational
      t.decimal :location_x
      t.decimal :location_y

      t.timestamps
    end
  end
end
