class CreateTongues < ActiveRecord::Migration
  def change
    create_table :tongues do |t|
      t.string :name

      t.timestamps
    end
  end
end
