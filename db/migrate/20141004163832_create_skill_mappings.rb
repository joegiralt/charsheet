class CreateSkillMappings < ActiveRecord::Migration
  def change
    create_table :skill_mappings do |t|
      t.references :skillable, polymorphic: true, index: true
      t.string :skill_id

      t.timestamps
    end
  end
end
