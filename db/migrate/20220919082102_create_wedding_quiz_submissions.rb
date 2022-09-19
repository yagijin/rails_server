# frozen_string_literal: true

# 結婚式の投票
class CreateWeddingQuizSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :wedding_quiz_submissions do |t|
      t.belongs_to :wedding_quiz_choice, foreign_key: true
      t.timestamps
    end
  end
end
