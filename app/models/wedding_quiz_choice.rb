# frozen_string_literal: true

# 区椅子の選択肢
class WeddingQuizChoice < ApplicationRecord
  has_many :wedding_quiz_submissions, dependent: :destroy

  validates :text, presence: true

  def sum
    wedding_quiz_submissions.count
  end
end
