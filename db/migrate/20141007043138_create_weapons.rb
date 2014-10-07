class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :kind
      t.string :range
      t.integer :cost
      t.string :damage
      t.string :damage_type
      t.integer :weight

      t.timestamps
    end
  end
end
