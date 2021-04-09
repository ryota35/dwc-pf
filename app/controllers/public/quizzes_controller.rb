class Public::QuizzesController < ApplicationController

  def new
    @score = Score.new
    @score.results.build
    @quizzes = Quiz.quiz_set
  end

  def create
    score = Score.new(score_params)
    score.user_id = current_user.id
    score.save

    re_score = Score.last
    number = re_score.results.where(judgement: 'true').count
    score.update(score: number)
    redirect_to quiz_path(re_score)
  end

  def show
    @score = Score.find(params[:id])
    @results = @score.results
  end

  private
    def score_params
        params.require(:score).permit(:score, results_attributes:[:quiz_id, :selection_result, :judgement])
    end

end
