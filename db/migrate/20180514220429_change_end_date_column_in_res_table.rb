class ChangeEndDateColumnInResTable < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :end_time, :date
  end
end
