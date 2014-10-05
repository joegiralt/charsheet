# == Schema Information
#
# Table name: tongues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Tongue < ActiveRecord::Base
  has_many :languages
end
