class CreateComponents < ActiveRecord::Migration[7.1]
  def change
    create_table :components do |t|
      t.string :make
      t.string :name
      t.string :serial_number
      t.text :description

      t.timestamps
    end
  end
end
