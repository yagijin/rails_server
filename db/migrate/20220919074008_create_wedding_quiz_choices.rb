# frozen_string_literal: true

# クイズの選択肢
class CreateWeddingQuizChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :wedding_quiz_choices do |t|
      t.belongs_to :wedding_quiz, foreign_key: true
      t.string :text, null: false
      t.timestamps
    end
  end
end
