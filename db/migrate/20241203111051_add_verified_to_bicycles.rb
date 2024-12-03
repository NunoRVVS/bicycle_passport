class AddVerifiedToBicycles < ActiveRecord::Migration[7.1]
  def change
    add_column :bicycles, :verified, :boolean
  end
end
