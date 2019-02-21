class RenameCharacterToIsMentor < ActiveRecord::Migration[5.2]
  def change
    change_column :profiles, :character, 'boolean USING CAST(character AS boolean)'
    rename_column :profiles, :character, :is_mentor
  end
end
