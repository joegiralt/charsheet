# == Schema Information
#
# Table name: weapons
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  kind        :string(255)
#  range       :string(255)
#  cost        :integer
#  damage      :string(255)
#  damage_type :string(255)
#  weight      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Weapon < ActiveRecord::Base
end
