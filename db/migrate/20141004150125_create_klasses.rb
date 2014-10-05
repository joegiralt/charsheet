class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :level
      t.integer :prof_bonus
      t.integer :trait_mapping_id
      t.integer :rages
      t.integer :rage_damage
      t.integer :cantrips_known
      t.integer :spells_known
      t.integer :spell_slot_1
      t.integer :spell_slot_2
      t.integer :spell_slot_3
      t.integer :spell_slot_4
      t.integer :spell_slot_5
      t.integer :spell_slot_6
      t.integer :spell_slot_7
      t.integer :spell_slot_8
      t.integer :spell_slot_9
      t.string :martial_arts
      t.integer :ki_points
      t.string :unarmored_move
      t.string :sneak_attack
      t.integer :spell_slots
      t.string :slot_level
      t.integer :invocations_known

      t.timestamps
    end
  end
end
