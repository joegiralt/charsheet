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

  def self.num_skill_prof_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        2
      when :bard
        3
      when :cleric
        2
      when :druid
        2
      when :fighter
        2
      when :paladin
        2
      when :ranger
        3
      when :monk
        2
      when :rogue
        4
      when :sorcerer
        2
      when :warlock
        2
      when :wizard
        2
      else
        []
    end
  end

  def self.skill_prof_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        ['Animal Handling', 'Athletics', 'Intimidation', 'Nature', 'Perception', 'Survival']
      when :bard
        ['Acrobatics', 'Animal Handling', 'Arcana', 'Athletics', 'Deception', 'History', 'Insight', 'Intimidation', 'Investigation', 'Medicine', 'Nature', 'Perception', 'Performance', 'Persuasion', 'Religion', 'Sleight of Hand', 'Stealth', 'Survival']
      when :cleric
        ['History', 'Insight', 'Medicine', 'Persuation', 'Religion']
      when :druid
        ['Arcana', 'Animal Handling', 'Insight', 'Medicine', 'Nature', 'Perception', 'Religion', 'Survival']
      when :fighter
        ['Acrobatics', 'Animal Handling', 'Athletics', 'History', 'Insight', 'Intimidation', 'Perception', 'Survival']
      when :paladin
        ['Athletics', 'Insight', 'Intimidation', 'Medicine', 'Persuasion', 'Religion']
      when :ranger
        ['Animal Handling','Stealth','Insight','Investigation','Nature', 'Perception', 'Survival', 'Athletics']
      when :monk
        ['Acrobatics', 'Athletics','History','Insight', 'Religion', 'Stealth']
      when :rogue
        ['Acrobatics',  'Athletics', 'Deception', 'Insight', 'Intimidation', 'Investigation', 'Medicine', 'Nature', 'Perception', 'Performance', 'Persuasion', 'Religion', 'Sleight of Hand', 'Stealth']
      when :sorcerer
        ['Arcana', 'Deception', 'Insight', 'Intimidation', 'Persuasion', 'Religion']
      when :warlock
        ['Arcana', 'Deception', 'History', 'Intimidation', 'Investigation', 'Nature', 'Religion']
      when :wizard
        ['Arcana',  'History', 'Intimidation', 'Insight', 'History',' Investigation', 'Medicine', 'Religion']
      else
        []
    end
  end

  def self.saving_throws_for(klass)
    case klass.downcase.to_sym
      when :barbarian, :fighter
        ['Strength', 'Constitution']
      when :bard
        ['Dexterity', 'Charisma']
      when :cleric, :paladin, :warlock
        ['Wisdom', 'Charisma']
      when :druid
        ['Wisdom', 'Intelligence']
      when :ranger, :monk
        ['Strength', 'Dexterity']
      when :rogue
        ['Dexterity', 'Intelligence']
      when :sorcerer
        ['Constitution', 'Charisma']
      when :wizard
        ['Intelligence', 'Wisdom']
      else
        []
    end
  end

  def self.armor_prof_for(klass)
    case klass.downcase.to_sym
      when :barbarian, :druid, :cleric, :ranger
        ['Light', 'Medium', 'Shield']
      when :bard, :warlock, :rogue
        ['Light']
      when :fighter, :paladin
        ['Light', 'Medium', 'Heavy', 'Shield']
      else
        []
    end
  end

  def self.weapon_prof_for(klass)
    case klass.downcase.to_sym
      when :barbarian, :fighter, :ranger, :paladin
        ['Simple', 'Martial']
      when :bard
        ['Simple', 'Crossbow, Hand', 'Longsword', 'Rapier', 'Shortsword']
      when :cleric, :warlock
        ['Simple']
      when :druid
        ['Club', 'Dagger', 'Dart', 'Javelin', 'Mace', 'Quaterstaff', 'Scimitar', 'Sickle', 'Sling', 'Spear']
      when :monk
        ['Simple', 'Shortsword']
      when :rogue
        ['Simple', 'Crossbow, Hand', 'Shortsword', 'Rapier', 'Longsword' ]
      when :sorcerer, :wizard
        ['Dagger', 'Dart', 'Sling', 'Quarterstaff', 'Crossbow, Light']
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
      when :cleric
        []
      when :druid
        ['Herbalism Kit']
      when :fighter
        []
      when :paladin
        []
      when :ranger
        []
      when :monk
        []
      when :rogue
        ['Thieves\' Tools']
      when :sorcerer
        []
      when :warlock
        []
      when :wizard
        []
      else
        []
    end
  end

  def self.hit_dice_for(klass)
    case klass.downcase.to_sym
      when :barbarian
        12
      when :fighter, :paladin, :ranger
        10
      when :bard, :cleric, :druid, :monk, :rogue, :warlock
        8
      when :wizard, :sorcerer,
        6
      else
        []
    end
  end

end
