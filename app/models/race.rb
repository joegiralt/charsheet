class Race < ActiveRecord::Base
  has_many :characters,  inverse_of: :race
  has_many :languages, as: :languageable
  has_many :tongues, through: :languages
  has_many :trait_mappings, as: :traitable
  has_many :traits, through: :trait_mappings

end
