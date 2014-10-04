class Language < ActiveRecord::Base
  belongs_to :languageable, polymorphic: true
  belongs_to :tongue




end
