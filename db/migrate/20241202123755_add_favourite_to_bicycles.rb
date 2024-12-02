class AddFavouriteToBicycles < ActiveRecord::Migration[7.1]
  def change
    add_column :bicycles, :favourite, :boolean
  end
end
