class TraitMapping < ActiveRecord::Base
  belongs_to :traitable, polymorphic: true
  belongs_to :trait
end
