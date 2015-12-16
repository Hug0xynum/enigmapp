class CreateProgressions < ActiveRecord::Migration
  def change
    create_table :progressions do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :history, null: false, default: 1
      t.integer :philosophy, null: false, default: 1
      t.integer :maths, null: false, default: 1
      t.integer :technology, null: false, default: 1
      t.integer :score, default: 0
      t.boolean :last_theme, default: false
      t.boolean :last_enigma, default: false
      t.datetime :finish_at

      t.timestamps null: false
    end
  end
end
