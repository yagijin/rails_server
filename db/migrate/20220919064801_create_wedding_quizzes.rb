# frozen_string_literal: true

# クイズのテーブル
class CreateWeddingQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :wedding_quizzes do |t|
      t.string :text, null: false
      t.boolean :opened, default: false
      t.timestamps
    end
  end
end
