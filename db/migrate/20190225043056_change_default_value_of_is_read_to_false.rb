class ChangeDefaultValueOfIsReadToFalse < ActiveRecord::Migration[5.2]
  def change
    change_column :messages, :is_read, :boolean, default: false
  end
end
