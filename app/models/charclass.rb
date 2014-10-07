# == Schema Information
#
# Table name: charclasses
#
#  id           :integer          not null, primary key
#  character_id :integer
#  klass_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Charclass < ActiveRecord::Base
  belongs_to :klass
  belongs_to :character
end
