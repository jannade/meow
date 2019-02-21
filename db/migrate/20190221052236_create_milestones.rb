class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.string :description
      t.boolean :is_completed
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
