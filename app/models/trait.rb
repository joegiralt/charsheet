# == Schema Information
#
# Table name: traits
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Trait < ActiveRecord::Base
  has_many :trait_mappings
end
