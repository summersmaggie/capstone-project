class ChangeColumnInResTable < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :start_time, :date
  end
end
