class ChangeDefaultValueOfStatusInConnections < ActiveRecord::Migration[5.2]
  def change
    change_column :connections, :status, :string, default: "Pending"
  end
end
