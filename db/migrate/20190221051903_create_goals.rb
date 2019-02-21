class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :description
      t.boolean :is_active
      t.references :connection, foreign_key: true

      t.timestamps
    end
  end
end
