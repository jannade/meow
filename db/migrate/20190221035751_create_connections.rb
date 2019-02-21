class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.string :status
      t.references :mentee, references: :profile, foreign_key: { to_table: :profiles }
      t.references :mentor, references: :profile, foreign_key: { to_table: :profiles }

      t.timestamps
    end
  end
end
