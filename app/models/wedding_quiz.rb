# frozen_string_literal: true

class WeddingQuiz < ApplicationRecord
  has_many :wedding_quiz_choices, dependent: :destroy

  validates :text, presence: true

  def selection
    result = nil
    wedding_quiz_choices.each do |choice|
      result = choice if result.nil? || result.sum < choice.sum
    end
    result
  end
end
