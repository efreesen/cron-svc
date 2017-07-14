class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string  :name
      t.string  :payload
      t.integer :frequency_quantity
      t.references :frequency_period
      t.string :at

      t.timestamps
    end
  end
end