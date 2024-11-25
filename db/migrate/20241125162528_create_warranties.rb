class CreateWarranties < ActiveRecord::Migration[7.1]
  def change
    create_table :warranties do |t|
      t.string :issuer
      t.date :start_date
      t.date :end_date
      t.references :bicycle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
