class Race < ActiveRecord::Base
  has_many :character,  inverse_of: :race

end
