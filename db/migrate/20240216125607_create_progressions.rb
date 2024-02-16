class CreateProgressions < ActiveRecord::Migration[7.0]
  def change
    create_table :progressions do |t|
      t.integer :set
      t.integer :rep
      t.string :weight
      t.integer :level
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
