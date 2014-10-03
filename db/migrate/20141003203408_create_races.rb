class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.integer :str_mod
      t.integer :dex_mod
      t.integer :con_mod
      t.integer :int_mod
      t.integer :wis_mod
      t.integer :cha_mod
      t.string :size
      t.string :speed

      t.timestamps
    end
  end
end
