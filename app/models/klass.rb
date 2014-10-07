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
  has_many :charclass
  has_many :characters, through: :charclass
  has_many :trait_mappings, as: :traitable
  has_many :traits, through: :trait_mappings
  has_many :skill_mappings, as: :skillable
  has_many :skills, through: :skill_mappings


  def self.traits_for(klass, level)
    traits = []
    Klass.where("level <= #{level}", name: "#{klass}").each do |class_level|
      class_level.traits.each do |trait|
        traits << trait.name
      end
    end
    traits
  end

  def self.skill_prof_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        ['Animal Handling', 'Athletics', 'Intimidation', 'Nature', 'Perception', 'Survival']
      when :bard
        ['Acrobatics', 'Animal Handling', 'Arcana', 'Athletics', 'Deception', 'History', 'Insight', 'Intimidation', 'Investigation', 'Medicine', 'Nature', 'Perception', 'Performance', 'Persuation', 'Religion', 'Sleight of Hand', 'Stealth', 'Survival']
      else
        []
    end
  end

  def self.saving_throws_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        ['Strength', 'Constitution']
      when :bard
        ['Dexterity', 'Charisma']
      else
        []
    end
  end

  def self.armor_prof_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        ['Light Armor', 'Medium Armor', 'Shields']
      when :Bard
        ['Light Armor']
      else
        []
    end
  end

  def self.weapon_prof_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        ['Simple', 'Martial']
      when :bard
        ['Simple', 'Hand Crossbow', 'Longsword', 'Rapier', 'Shortsword']
      when :cleric
        ['Simple']
      else
        []
    end
  end

  def self.tools_prof_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        []
      when :bard
        ['Bagpipes', 'Drum', 'Dulcimer', 'Flute', 'Lute', 'Lyre', 'Horn', 'Pan Flute', 'Shawm', 'Viol']
      else
        []
    end
  end

  def self.hit_dice_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        12
      when :fighter
        10
      when :bard, :cleric
        8
      when :wizard
        6
      else
        []
    end
  end

end
