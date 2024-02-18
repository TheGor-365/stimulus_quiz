class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[ show edit update destroy ]

  def index
    @quizzes = Quiz.all
  end

  def show; end

  def new
    @quiz = Quiz.new
    @quiz.questions.build
  end

  def edit; end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.save ? (redirect_to quiz_url(@quiz)) : (render :new)
  end

  def update
    @quiz.update(quiz_params) ? (redirect_to quiz_url(@quiz)) : (render :edit)
  end

  def destroy
    @quiz.destroy
    redirect_to quizzes_url
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(
      :title,
      :image,
      questions_attributes: [
        :id,
        :_destroy,
        :content,
        :answer_1,
        :answer_2,
        :answer_3,
        :answer_4,
        :image
      ]
    )
  end
end
