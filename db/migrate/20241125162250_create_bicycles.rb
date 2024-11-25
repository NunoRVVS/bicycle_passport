class CreateBicycles < ActiveRecord::Migration[7.1]
  def change
    create_table :bicycles do |t|
      t.string :name
      t.string :category
      t.string :serial_number
      t.text :description
      t.string :make
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
