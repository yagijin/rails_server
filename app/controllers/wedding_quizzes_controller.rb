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

    ## TODO: ここに数値判定を入れる
    WeddingQuizSubmission.create!(wedding_quiz_choice_id: params[:choice_id])
    render json: true
  end

  # クイズの集計結果を返す
  def count
    choices = WeddingQuiz.find(params[:id]).wedding_quiz_choices

    result = []
    choices.each do |choice|
      hash = { id: choice.id, count: choice.sum }
      result.push hash
    end
    render json: result.to_json
  end

  def result
    render json: { data: 0 }
  end
end
