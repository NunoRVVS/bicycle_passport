class AddAttributesToRides < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :start_point, :string
    add_column :rides, :end_point, :string
    # Remova as colunas duplicadas
    # add_column :rides, :start_date, :datetime
    # add_column :rides, :end_date, :datetime
    # add_column :rides, :distance, :float
  end
end
