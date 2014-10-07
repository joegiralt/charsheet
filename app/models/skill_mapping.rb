# == Schema Information
#
# Table name: skill_mappings
#
#  id             :integer          not null, primary key
#  skillable_id   :integer
#  skillable_type :string(255)
#  skill_id       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class SkillMapping < ActiveRecord::Base
  belongs_to :skillable, polymorphic: true
  belongs_to :skill
end
