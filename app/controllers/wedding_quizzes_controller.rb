# frozen_string_literal: true

# クイズのコントローラ
class WeddingQuizzesController < ApplicationController
  # クイズの選択肢の情報を返す
  def index
    render json: {
      quiz: WeddingQuiz.find(params[:id]).text,
      choices: WeddingQuiz.find(params[:id]).wedding_quiz_choices.index_by(&:id).values
    }.to_json
  end

  # クイズの投票をする
  def add
    return if params[:choice_id].nil?

    unless WeddingQuiz.find(params[:choice_id]).closed
      ## TODO: ここに数値判定を入れる
      WeddingQuizSubmission.create!(wedding_quiz_choice_id: params[:choice_id])
    end
    render json: true
  end

  # クイズの集計結果を返す
  def count
    quiz = WeddingQuiz.find(params[:id])
    choices = quiz.wedding_quiz_choices

    result = []
    choices.each do |choice|
      hash = {
        id: choice.id,
        text: choice.text,
        count: choice.sum
      }
      result.push hash
    end
    render json: {
      isClosed: quiz.closed,
      quizId: quiz.id,
      quizText: quiz.text,
      result: result
    }.to_json
  end

  def result
    result = []
    WeddingQuiz.all.each do |quiz|
      selection = quiz.selection
      a = { id: quiz.id, text: quiz.text, selection: selection.text }
      result.push a
    end
    render json: result.to_json
  end
end
