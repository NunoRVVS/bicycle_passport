class CreateUsersRides < ActiveRecord::Migration[7.1]
  def change
    create_table :users_rides do |t|
      t.references :bicycle, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :ride, null: false, foreign_key: true

      t.timestamps
    end
  end
end
