class AddVerifiedToMaintenances < ActiveRecord::Migration[7.1]
  def change
    add_column :maintenances, :verified, :boolean
  end
end
