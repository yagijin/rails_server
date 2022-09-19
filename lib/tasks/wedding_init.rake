# frozen_string_literal: true

namespace :wedding_init do
  desc 'クイズの初期化'
  task generate: :environment do
    WeddingQuiz.destroy_all

    (1..3).each do |id|
      WeddingQuiz.create!(id: id, text: "問題#{id}")

      choice1 = WeddingQuizChoice.create!(wedding_quiz_id: id, text: '選択肢1')
      3.times.each do
        WeddingQuizSubmission.create!(wedding_quiz_choice_id: choice1.id)
      end

      choice2 = WeddingQuizChoice.create!(wedding_quiz_id: id, text: '選択肢2')
      7.times.each do
        WeddingQuizSubmission.create!(wedding_quiz_choice_id: choice2.id)
      end
    end
  end
end
