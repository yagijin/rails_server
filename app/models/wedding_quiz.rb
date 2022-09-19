# frozen_string_literal: true

class WeddingQuiz < ApplicationRecord
  has_many :wedding_quiz_choices, dependent: :destroy

  validates :text, presence: true
end
