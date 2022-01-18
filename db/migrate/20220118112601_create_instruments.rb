class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :family
      t.decimal :price

      t.timestamps
    end
  end
end
