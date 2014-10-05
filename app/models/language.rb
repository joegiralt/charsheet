# == Schema Information
#
# Table name: languages
#
#  id                :integer          not null, primary key
#  languageable_id   :integer
#  languageable_type :string(255)
#  tongue_id         :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Language < ActiveRecord::Base
  belongs_to :languageable, polymorphic: true
  belongs_to :tongue




end
