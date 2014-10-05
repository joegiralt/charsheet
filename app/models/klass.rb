# == Schema Information
#
# Table name: klasses
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  level             :integer
#  prof_bonus        :integer
#  trait_mapping_id  :integer
#  rages             :integer
#  rage_damage       :integer
#  cantrips_known    :integer
#  spells_known      :integer
#  spell_slot_1      :integer
#  spell_slot_2      :integer
#  spell_slot_3      :integer
#  spell_slot_4      :integer
#  spell_slot_5      :integer
#  spell_slot_6      :integer
#  spell_slot_7      :integer
#  spell_slot_8      :integer
#  spell_slot_9      :integer
#  martial_arts      :string(255)
#  ki_points         :integer
#  unarmored_move    :string(255)
#  sneak_attack      :string(255)
#  spell_slots       :integer
#  slot_level        :string(255)
#  invocations_known :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Klass < ActiveRecord::Base
  belongs_to :character
  has_many :trait_mappings, as: :traitable
  has_many :traits, through: :trait_mappings


  def self.traits_for(name, level)
    traits = []
    Klass.where("level <= #{level}", name: "#{name}").each do |class_level|
      class_level.traits.each do |trait|
        traits << trait.name
      end
    end
    traits
  end

end
