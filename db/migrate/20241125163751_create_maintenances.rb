class CreateMaintenances < ActiveRecord::Migration[7.1]
  def change
    create_table :maintenances do |t|
      t.date :date
      t.string :shop
      t.text :description
      t.references :bicycle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
