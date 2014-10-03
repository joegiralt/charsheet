class AddRaceIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :race_id, :integer
  end
end
