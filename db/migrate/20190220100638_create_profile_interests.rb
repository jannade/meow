class CreateProfileInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_interests do |t|
      t.references :profile, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
