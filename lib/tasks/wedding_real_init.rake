# frozen_string_literal: true

namespace :wedding_real_init do
  desc 'クイズの初期化'
  task generate: :environment do
    WeddingQuiz.destroy_all

    array = []
    File.open('./7rules.json') do |file|
      array = JSON.load(file)
    end

    array.each_with_index do |object, index|
      WeddingQuiz.create!(id: (index + 1), text: object['title'])

      object['selections'].each do |selection|
        choice = WeddingQuizChoice.create!(wedding_quiz_id: (index + 1), text: selection)
        7.times.each do
          WeddingQuizSubmission.create!(wedding_quiz_choice_id: choice.id)
        end
      end
    end
  end
end
