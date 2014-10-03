# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Race.find_or_create_by(
  name:         "Tiefling",
  str_mod:      0,
  dex_mod:      0,
  con_mod:      0,
  int_mod:      1,
  wis_mod:      0,
  cha_mod:      2,
  size:         "Medium",
  speed:        '30'
)