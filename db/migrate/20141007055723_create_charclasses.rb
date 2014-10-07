class CreateCharclasses < ActiveRecord::Migration
  def change
    create_table :charclasses do |t|
      t.integer :character_id
      t.integer :klass_id

      t.timestamps
    end
  end
end
