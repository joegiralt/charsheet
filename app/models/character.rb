class Character < ActiveRecord::Base

  belongs_to :race, inverse_of: :character

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
    p switch_1
    p switch_2
  end
end
