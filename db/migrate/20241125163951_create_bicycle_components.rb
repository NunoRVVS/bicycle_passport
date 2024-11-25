class CreateBicycleComponents < ActiveRecord::Migration[7.1]
  def change
    create_table :bicycle_components do |t|
      t.references :bicycle, null: false, foreign_key: true
      t.references :component, null: false, foreign_key: true

      t.timestamps
    end
  end
end
