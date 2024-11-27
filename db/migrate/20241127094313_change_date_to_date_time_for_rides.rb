class ChangeDateToDateTimeForRides < ActiveRecord::Migration[7.1]
  def change
    add_column :rides, :start_time, :time
    add_column :rides, :end_time, :time
  end

end
