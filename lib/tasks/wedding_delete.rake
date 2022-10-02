namespace :wedding_delete do
  desc 'クイズの初期化'
  task delete: :environment do
    WeddingQuiz.destroy_all
  end
end
