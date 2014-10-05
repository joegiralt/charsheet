# == Schema Information
#
# Table name: trait_mappings
#
#  id             :integer          not null, primary key
#  traitable_id   :integer
#  traitable_type :string(255)
#  trait_id       :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class TraitMapping < ActiveRecord::Base
  belongs_to :traitable, polymorphic: true
  belongs_to :trait
end
