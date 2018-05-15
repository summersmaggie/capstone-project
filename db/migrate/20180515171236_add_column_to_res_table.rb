class AddColumnToResTable < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :notes, :string
  end
end
