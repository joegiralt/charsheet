class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.references :languageable, polymorphic: true, index: true
      t.integer :tongue_id

      t.timestamps
    end
  end
end
