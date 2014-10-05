# == Schema Information
#
# Table name: races
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  str_mod    :integer
#  dex_mod    :integer
#  con_mod    :integer
#  int_mod    :integer
#  wis_mod    :integer
#  cha_mod    :integer
#  size       :string(255)
#  speed      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Race < ActiveRecord::Base
  has_many :characters,  inverse_of: :race
  has_many :languages, as: :languageable
  has_many :tongues, through: :languages
  has_many :trait_mappings, as: :traitable
  has_many :traits, through: :trait_mappings

end
