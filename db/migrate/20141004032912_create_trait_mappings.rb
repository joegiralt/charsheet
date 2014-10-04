class CreateTraitMappings < ActiveRecord::Migration
  def change
    create_table :trait_mappings do |t|
      t.references :traitable, polymorphic: true, index: true
      t.integer :trait_id

      t.timestamps
    end
  end
end
