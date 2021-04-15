class Admins::QuizzesController < ApplicationController
  def index
    case (params[:sort])
    when "0"
      @quizzes = Quiz.where(level: "初級").page(params[:page]).per(10)
    when "1"
      @quizzes = Quiz.where(level: "中級").page(params[:page]).per(10)
    else
      @quizzes = Quiz.where(level: "上級").page(params[:page]).per(10)
    end

    @quiz = Quiz.new
  end

  def create
    quiz = Quiz.new(quiz_params)
    if quiz.save
      redirect_to admins_quizzes_path
    else
      @quizzes = Quiz.where(level: "初級").page(params[:page]).per(10)
      render "index"
    end
  end

  def edit
  end

  private
  def quiz_params
    params.require(:quiz).permit(:question, :choice1, :choice2, :choice3, :choice4, :answer, :level)
  end

end
