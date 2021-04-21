class Admins::QuizzesController < ApplicationController
  before_action :authenticate_admin!
  
  
  def index
    case (params[:sort])
    when "0"
      @quizzes = Quiz.where(level: "初級").order("updated_at DESC").page(params[:page]).per(10)
      @quiz_level = "初級"
    when "1"
      @quizzes = Quiz.where(level: "中級").order("updated_at DESC").page(params[:page]).per(10)
      @quiz_level = "中級"
    else
      @quizzes = Quiz.where(level: "上級").order("updated_at DESC").page(params[:page]).per(10)
      @quiz_level = "上級"
    end

    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to admins_quizzes_path(sort: Quiz.levels[@quiz.level])
    else
      @quizzes = Quiz.where(level: "初級").page(params[:page]).per(10)
      render "index"
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      redirect_to admins_quizzes_path(sort: Quiz.levels[@quiz.level])
    else
      render "edit"
    end
  end

  def destroy
    quiz = Quiz.find(params[:id])
    quiz.destroy
    redirect_to admins_quizzes_path(sort: 0)
  end

  private
  def quiz_params
    params.require(:quiz).permit(:question, :choice1, :choice2, :choice3, :choice4, :answer, :level)
  end

end
