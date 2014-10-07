# == Schema Information
#
# Table name: characters
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  age                 :string(255)
#  eyes                :string(255)
#  skin                :string(255)
#  height              :string(255)
#  weight              :integer
#  size                :string(255)
#  distiguishing_marks :string(255)
#  level               :integer
#  str                 :integer
#  dex                 :integer
#  con                 :integer
#  int                 :integer
#  wis                 :integer
#  cha                 :integer
#  created_at          :datetime
#  updated_at          :datetime
#  race_id             :integer
#

class Character < ActiveRecord::Base


  belongs_to :race, inverse_of: :characters
  has_many :charclass
  has_many :klasses, through: :charclass


  def self.roll_four_keep_three
    roll = []
    4.times do
      roll << rand(1..6)
    end
    roll.sort[1..-1].reduce(:+)
  end

  def self.rollup_new!
    Character.create!(
      str: roll_four_keep_three,
      dex: roll_four_keep_three,
      con: roll_four_keep_three,
      int: roll_four_keep_three,
      wis: roll_four_keep_three,
      cha: roll_four_keep_three
    ).save!
  end

  def ability_scores
    p "Strength:     #{str}"
    p "Dexterity:    #{dex}"
    p "Constitution: #{con}"
    p "Intelligence: #{int}"
    p "Wisdom:       #{wis}"
    p "Charisma:     #{cha}"
  end

  def ability_score_swap(score_1, score_2)
    switch_1 = try(:"#{score_1}")
    switch_2 = try(:"#{score_2}")
    update_attribute( score_1, switch_2)
    update_attribute( score_2, switch_1)
    save
  end


  def strength
    if race
      str + race.str_mod
    else
      str
    end
  end

  def str_mod
    if strength >= 10
      (strength - 10) / 2
    elsif strength >= 8
      -1
    elsif  strength >= 6
      -2
    elsif  strength >= 4
      -3
    elsif  strength >= 2
      -4
    end
  end

  def dexterity
    if race
      dex + race.dex_mod
    else
      dex
    end
  end

  def dex_mod
    if dexterity >= 10
      (dexterity - 10) / 2
    elsif dexterity >= 8
      -1
    elsif  dexterity >= 6
      -2
    elsif  dexterity >= 4
      -3
    elsif  dexterity >= 2
      -4
    end
  end

  def constitution
    if race
      con + race.con_mod
    else
      con
    end
  end

  def con_mod
    if constitution >= 10
      (constitution - 10) / 2
    elsif constitution >= 8
       -1
    elsif  constitution >= 6
       -2
    elsif  constitution >= 4
       -3
    elsif  constitution >= 2
       -4
    end
  end

  def intelligence
    if race
      int + race.int_mod
    else
      int
    end
  end

  def int_mod
    if intelligence >= 10
      (intelligence - 10) / 2
    elsif intelligence >= 8
       -1
    elsif  intelligence >= 6
       -2
    elsif  intelligence >= 4
       -3
    elsif  intelligence >= 2
       -4
    end
  end

  def wisdom
    if race
      wis + race.wis_mod
    else
      wis
    end
  end

  def wis_mod
    if wisdom >= 10
      (wisdom - 10) / 2
    elsif wisdom >= 8
      -1
    elsif  wisdom >= 6
      -2
    elsif  wisdom >= 4
      -3
    elsif  wisdom >= 2
      -4
    end
  end

  def charisma
    if race
      cha + race.cha_mod
    else
      cha
    end
  end

  def cha_mod
    if charisma >= 10
      (charisma - 10) / 2
    elsif charisma >= 8
      -1
    elsif  charisma >= 6
      -2
    elsif  charisma >= 4
      -3
    elsif  charisma >= 2
      -4
    end
  end

end
