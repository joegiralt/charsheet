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
  speed:        '30 ft'
)
Race.find_or_create_by(
  name:         "Half-Orc",
  str_mod:      2,
  dex_mod:      0,
  con_mod:      1,
  int_mod:      0,
  wis_mod:      0,
  cha_mod:      0,
  size:         "Medium",
  speed:        '30 ft'
)
Race.find_or_create_by(
  name:         "Forest Gnome",
  str_mod:      0,
  dex_mod:      1,
  con_mod:      0,
  int_mod:      2,
  wis_mod:      0,
  cha_mod:      0,
  size:         "Medium",
  speed:        '30 ft'
)
Race.find_or_create_by(
    name:         "Rock Gnome",
    str_mod:      0,
    dex_mod:      0,
    con_mod:      1,
    int_mod:      2,
    wis_mod:      0,
    cha_mod:      0,
    size:         "Medium",
    speed:        '30 ft'
)


Tongue.find_or_create_by!(name: 'Common')
Tongue.find_or_create_by!(name: 'Dwarvish')
Tongue.find_or_create_by!(name: 'Elvish')
Tongue.find_or_create_by!(name: 'Giant')
Tongue.find_or_create_by!(name: 'Gnomish')
Tongue.find_or_create_by!(name: 'Goblin')
Tongue.find_or_create_by!(name: 'Halfling')
Tongue.find_or_create_by!(name: 'Orc')
Tongue.find_or_create_by!(name: 'Abyssal')
Tongue.find_or_create_by!(name: 'Celestial')
Tongue.find_or_create_by!(name: 'Draconic')
Tongue.find_or_create_by!(name: 'Deep Speech')
Tongue.find_or_create_by!(name: 'Infernal')
Tongue.find_or_create_by!(name: 'Promordial')
Tongue.find_or_create_by!(name: 'Sylvian')
Tongue.find_or_create_by!(name: 'Undercommon')


Trait.find_or_create_by!(name: 'Darkvision')
Trait.find_or_create_by!(name: 'Hellish Resistance')
Trait.find_or_create_by!(name: 'Menacing')
Trait.find_or_create_by!(name: 'Relentless Endurance')
Trait.find_or_create_by!(name: 'Savage Attacks')
Trait.find_or_create_by!(name: 'Gnome Cunning')
Trait.find_or_create_by!(name: 'Natural Illusionist')
Trait.find_or_create_by!(name: 'Speak with Small Beasts')
Trait.find_or_create_by!(name: "Artificer's Lore")
Trait.find_or_create_by!(name: 'Tinker')
Trait.find_or_create_by!(name: 'Rage')
Trait.find_or_create_by!(name: 'Unarmored Defense')
Trait.find_or_create_by!(name: 'Reckless Attack')
Trait.find_or_create_by!(name: 'Danger Sense')
Trait.find_or_create_by!(name: 'Infernal Legacy')
Trait.find_or_create_by!(name: 'Primal Path')
Trait.find_or_create_by!(name: 'Brutal Critical (1d)')
Trait.find_or_create_by!(name: 'Extra Attack')
Trait.find_or_create_by!(name: 'Fast Movement')
Trait.find_or_create_by!(name: 'Path Feature 1')
Trait.find_or_create_by!(name: 'Feral Instinct')
Trait.find_or_create_by!(name: 'Path Feature 2')
Trait.find_or_create_by!(name: 'Ability Score Improvement 1')
Trait.find_or_create_by!(name: 'Ability Score Improvement 2')
Trait.find_or_create_by!(name: 'Ability Score Improvement 3')
Trait.find_or_create_by!(name: 'Brutal Critical (2d)')
Trait.find_or_create_by!(name: 'Path Feature 3')
Trait.find_or_create_by!(name: 'Relentless Rage')
Trait.find_or_create_by!(name: 'Persistent Rage')
Trait.find_or_create_by!(name: 'Ability Score Improvement 4')
Trait.find_or_create_by!(name: 'Brutal Critical (3d)')
Trait.find_or_create_by!(name: 'Indomitable Might')
Trait.find_or_create_by!(name: 'Primal Champion')
Trait.find_or_create_by!(name: '')
Trait.find_or_create_by!(name: '')
['Relentless rage', 'Brutal Critical (2d)', 'Path Feature 2', 'Persistant Rage', 'Brutal Critical (3d)', 'Indomitable Might', 'Ability Score Improvement 5']. each do |trait|
  Trait.find_or_create_by!(name: trait)
end




TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Tiefling').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Darkvision').id)
TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Tiefling').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Hellish Resistance').id)
TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Tiefling').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Infernal Legacy').id)


TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Half-Orc').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Darkvision').id)
TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Half-Orc').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Menacing').id)
TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Half-Orc').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Relentless Endurance').id)
TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Half-Orc').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Savage Attacks').id)

TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Forest Gnome').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Darkvision').id)
TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Forest Gnome').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Gnome Cunning').id)
TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Forest Gnome').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Natural Illusionist').id)
TraitMapping.find_or_create_by!(traitable_id: Race.find_by(name: 'Forest Gnome').id, traitable_type: 'Race', trait_id: Trait.find_by(name: 'Speak with Small Beasts').id)


Language.find_or_create_by!(languageable_id: Race.find_by(name: 'Tiefling').id, languageable_type: 'Race', tongue_id: Tongue.find_by(name: 'Infernal').id)
Language.find_or_create_by!(languageable_id: Race.find_by(name: 'Tiefling').id, languageable_type: 'Race', tongue_id: Tongue.find_by(name: 'Common').id)
Language.find_or_create_by!(languageable_id: Race.find_by(name: 'Half-Orc').id, languageable_type: 'Race', tongue_id: Tongue.find_by(name: 'Common').id)
Language.find_or_create_by!(languageable_id: Race.find_by(name: 'Half-Orc').id, languageable_type: 'Race', tongue_id: Tongue.find_by(name: 'Orc').id)
Language.find_or_create_by!(languageable_id: Race.find_by(name: 'Forest Gnome').id, languageable_type: 'Race', tongue_id: Tongue.find_by(name: 'Gnomish').id)
Language.find_or_create_by!(languageable_id: Race.find_by(name: 'Forest Gnome').id, languageable_type: 'Race', tongue_id: Tongue.find_by(name: 'Common').id)

Klass.find_or_create_by!(name: "Barbarian", level: 1, prof_bonus: 2, rages: 2, rage_damage: 2)
Klass.find_or_create_by!(name: "Barbarian", level: 2, prof_bonus: 2, rages: 2, rage_damage: 2)
Klass.find_or_create_by!(name: "Barbarian", level: 3, prof_bonus: 2, rages: 3, rage_damage: 2)
Klass.find_or_create_by!(name: "Barbarian", level: 4, prof_bonus: 2, rages: 3, rage_damage: 2)
Klass.find_or_create_by!(name: "Barbarian", level: 5, prof_bonus: 3, rages: 3, rage_damage: 2)
Klass.find_or_create_by!(name: "Barbarian", level: 6, prof_bonus: 3, rages: 4, rage_damage: 2)
Klass.find_or_create_by!(name: "Barbarian", level: 7, prof_bonus: 3, rages: 4, rage_damage: 2)
Klass.find_or_create_by!(name: "Barbarian", level: 8, prof_bonus: 3, rages: 4, rage_damage: 2)
Klass.find_or_create_by!(name: "Barbarian", level: 9, prof_bonus: 4, rages: 4, rage_damage: 3)
Klass.find_or_create_by!(name: "Barbarian", level: 10, prof_bonus: 4, rages: 4, rage_damage: 3)
Klass.find_or_create_by!(name: "Barbarian", level: 11, prof_bonus: 4, rages: 4, rage_damage: 3)
Klass.find_or_create_by!(name: "Barbarian", level: 12, prof_bonus: 4, rages: 4, rage_damage: 3)
Klass.find_or_create_by!(name: "Barbarian", level: 13, prof_bonus: 5, rages: 5, rage_damage: 3)
Klass.find_or_create_by!(name: "Barbarian", level: 14, prof_bonus: 5, rages: 5, rage_damage: 3)
Klass.find_or_create_by!(name: "Barbarian", level: 15, prof_bonus: 5, rages: 5, rage_damage: 3)
Klass.find_or_create_by!(name: "Barbarian", level: 16, prof_bonus: 5, rages: 5, rage_damage: 4)
Klass.find_or_create_by!(name: "Barbarian", level: 17, prof_bonus: 5, rages: 6, rage_damage: 4)
Klass.find_or_create_by!(name: "Barbarian", level: 18, prof_bonus: 6, rages: 6, rage_damage: 4)
Klass.find_or_create_by!(name: "Barbarian", level: 19, prof_bonus: 6, rages: 6, rage_damage: 4)
Klass.find_or_create_by!(name: "Barbarian", level: 20, prof_bonus: 6, rages: 100, rage_damage: 4)




TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 1).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Rage').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 1).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Unarmored Defense').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 2).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Reckless Attack').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 2).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Danger Sense').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 3).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Primal Path').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 4).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Ability Score Improvement 1').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 5).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Extra Attack').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 5).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Fast Movement').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 6).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Path Feature 1').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 7).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Feral Instinct').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 8).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Ability Score Improvement 2').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 9).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Brutal Critical (1d)').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 10).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Path Feature 2').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 11).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Relentless Rage').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 12).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Ability Score Improvement 3').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 13).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Brutal Critical (2d)').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 14).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Path Feature 3').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 15).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Persistent Rage').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 16).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Ability Score Improvement 4').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 17).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Brutal Critical (3d)').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 18).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Indomitable Might').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 19).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Ability Score Improvement 5').id)
TraitMapping.find_or_create_by!(traitable_id: Klass.find_by(name: 'Barbarian', level: 20).id, traitable_type: 'Klass', trait_id: Trait.find_by(name: 'Primal Champion').id)



Weapon.find_or_create_by!(name: '', kind: '', range: '', cost: '', damage: '', damage_type: '', weight: nil )
Weapon.find_or_create_by!(name: 'Club',   kind: 'Simple', range: 'Melee', cost: 0.1, damage: '1d4',      damage_type: 'Bludgeoning', weight: 2 )
Weapon.find_or_create_by!(name: 'Dagger', kind: 'Simple', range: 'Melee', cost: 2 , damage: '1d4',      damage_type: 'Piercing',  weight: 1 )
Weapon.find_or_create_by!(name: 'Greatclub', kind: 'Simple', range: 'Melee', cost: 0.2, damage: '1d8', damage_type: 'Bludgeoning',  weight: 10 )
Weapon.find_or_create_by!(name: 'Handaxe', kind: 'Simple', range: 'Melee', cost: 5, damage: '1d6',    damage_type: 'Slashing',  weight: 2 )
Weapon.find_or_create_by!(name: 'Javelin', kind: 'Simple', range: 'Melee', cost: 0.5, damage: '1d6',   damage_type: 'Piercing',  weight: 2)
Weapon.find_or_create_by!(name: 'Light Hammer', kind: 'Simple', range: 'Melee', cost: 2, damage: '1d4', damage_type: 'Bludgeoning',  weight:2 )
Weapon.find_or_create_by!(name: 'Mace', kind: 'Simple', range: 'Melee', cost: 5, damage: '1d6', damage_type: 'Bludgeoning',  weight: 4)
Weapon.find_or_create_by!(name: 'Quarterstaff', kind: 'Simple', range: 'Melee', cost: 0.2, damage: '1d6', damage_type: 'Bludgeoning',  weight: 4)
Weapon.find_or_create_by!(name: 'Sickle', kind: 'Simple', range: 'Melee', cost: 1, damage: '1d4', damage_type: 'Piercing',  weight: 2)
Weapon.find_or_create_by!(name: 'Spear', kind: 'Simple', range: 'Melee', cost: 1, damage: '1d6', damage_type: 'Piercing',  weight: 3)
Weapon.find_or_create_by!(name: 'Unarmed Strike', kind: 'Simple', range: 'Melee', cost:0 , damage: '1', damage_type: 'Bludgeoning',  weight: 0 )
Weapon.find_or_create_by!(name: 'Crossbow, Light', kind: 'Simple', range: 'Ranged', cost: 25 , damage: '', damage_type: '',  weight: 5)
Weapon.find_or_create_by!(name: 'Dart', kind: 'Simple', range: 'Ranged', cost: 0.05, damage: '1d4', damage_type: 'Piercing',  weight: 0.25 )
Weapon.find_or_create_by!(name: 'Shortbow', kind: 'Simple', range: 'Ranged', cost: 25 , damage: '1d6', damage_type: 'Piercing',  weight: 2 )
Weapon.find_or_create_by!(name: 'Sling', kind: 'Simple', range: 'Ranged', cost: 0.1, damage: '1d4', damage_type: 'Bludgeoning',  weight: 0)
Weapon.find_or_create_by!(name: 'Battleaxe', kind: 'Martial', range: 'Melee', cost: 10, damage: '1d8', damage_type: 'Slashing',  weight: 4 )
Weapon.find_or_create_by!(name: 'Flail', kind: 'Martial', range: 'Melee', cost: 10, damage: '1d8', damage_type: 'Bludgeoning', weight: 2 )
Weapon.find_or_create_by!(name: 'Glaive', kind: 'Martial', range: 'Melee', cost: 20, damage: '1d10', damage_type: 'Slashing', weight: 6 )
Weapon.find_or_create_by!(name: 'Greataxe', kind: 'Martial', range: 'Melee', cost: 30, damage: '1d12', damage_type: 'Slashing', weight: 7 )









