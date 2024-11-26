class CreateRides < ActiveRecord::Migration[7.1]
  def change
    create_table :rides do |t|
      t.string :name
      t.float :start_lat
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.float :start_long
      t.float :end_lat
      t.float :end_long
      t.float :distance

      t.timestamps
    end
  end
end
