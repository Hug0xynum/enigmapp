class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :enigma, index: true, foreign_key: true
      t.text :wrong_answers, array: true, default: []
      t.string :right_answer
      t.datetime :solved_at
      t.boolean :clue_used, default: false

      t.timestamps null: false
    end
  end
end
