class ChangeDefaultValueOfIsCompletedToFalse < ActiveRecord::Migration[5.2]
  def change
    change_column :milestones, :is_completed, :boolean, default: false
  end
end
