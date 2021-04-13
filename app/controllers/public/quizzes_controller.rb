class Public::QuizzesController < ApplicationController

  def new
    @score = Score.new
    @score.results.build
    @quizzes = Quiz.quiz_set
  end

  def create
    score = Score.new(score_params)
    score.user_id = current_user.id

    if score.save
      count_score = Score.last
      number = count_score.results.where(judgement: 'true').count
      score.update(score: number)
      redirect_to quiz_path(count_score)
    else
      @score = Score.new
      @score.results.build
      byebug
      @selection_results= score_params[:results_attributes].values.map{ |v| [v[:quiz_id], v[:selection_result]]}.to_h
      quiz_ids = score_params[:results_attributes].values.map{ |v| v[:quiz_id]}
      @quizzes = Quiz.where(id: quiz_ids)
      render "new"
    end


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
