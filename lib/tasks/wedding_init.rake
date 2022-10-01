# frozen_string_literal: true

namespace :wedding_init do
  desc 'クイズの初期化'
  task generate: :environment do
    WeddingQuiz.destroy_all

    (1..7).each do |id|
      WeddingQuiz.create!(id: id, text: "朝の挨拶は？")

      choice1 = WeddingQuizChoice.create!(wedding_quiz_id: id, text: 'おはよう、良い朝だね')
      3.times.each do
        WeddingQuizSubmission.create!(wedding_quiz_choice_id: choice1.id)
      end

      choice2 = WeddingQuizChoice.create!(wedding_quiz_id: id, text: 'Good Morning!!')
      7.times.each do
        WeddingQuizSubmission.create!(wedding_quiz_choice_id: choice2.id)
      end
    end
  end
end
