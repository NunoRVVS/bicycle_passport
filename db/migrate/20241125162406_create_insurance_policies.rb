class CreateInsurancePolicies < ActiveRecord::Migration[7.1]
  def change
    create_table :insurance_policies do |t|
      t.string :insurer
      t.string :policy_number
      t.text :description
      t.references :bicycle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
