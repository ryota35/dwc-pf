class Result < ApplicationRecord
  before_create :judge_answer

  belongs_to :score
  belongs_to :quiz

  def judge_answer
    quiz = Quiz.find(self.quiz_id)
    if selection_result == quiz.answer
      self.judgement = 'true'
    else
      self.judgement = 'false'
    end
  end

end
