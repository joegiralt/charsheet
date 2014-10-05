class SkillMapping < ActiveRecord::Base
  belongs_to :skillable, polymorphic: true
end
