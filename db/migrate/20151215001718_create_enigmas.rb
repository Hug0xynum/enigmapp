class CreateEnigmas < ActiveRecord::Migration
  def change
    create_table :enigmas do |t|
      t.references :theme, index: true, foreign_key: true
      t.integer :difficulty
      t.string :label
      t.text :description
      t.text :clue
      t.string :right_answer

      t.timestamps null: false
    end
  end
end
