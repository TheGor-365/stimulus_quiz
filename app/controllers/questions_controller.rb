class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]

  def index
    @questions = Question.all
  end

  def show; end

  def new
    @question = Question.new
  end

  def edit; end

  def create
    @question = Question.new(question_params)
    @question.save ? (redirect_to question_url(@question)) : (render :new)
  end

  def update
    @question.update(question_params) ? (redirect_to question_url(@question)) : (render :edit)
  end

  def destroy
    @question.destroy
    redirect_to questions_url
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(
      :quiz_id,
      :content,
      :answer_1,
      :answer_2,
      :answer_3,
      :answer_4,
      :correct_answer
    )
  end
end
