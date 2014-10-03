class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string  :name
      t.string  :age
      t.string  :eyes
      t.string  :skin
      t.string  :height
      t.integer :weight
      t.string  :size
      t.string  :distiguishing_marks
      t.integer :level
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha

      t.timestamps
    end
  end
end
