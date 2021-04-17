class Quiz < ApplicationRecord

  has_many :results, dependent: :destroy

  validates :question, presence: true
  validates :choice1, presence: true
  validates :choice2, presence: true
  validates :level, presence: true

  enum level: { 初級: 0, 中級: 1, 上級: 2 }

  def get_answer
    eval("choice#{answer}")
  end

  class << self

    def quiz_set
      low = Quiz.where(level: '初級').sample(10)
      middle = Quiz.where(level: '中級').sample(10)
      high = Quiz.where(level: '上級').sample(10)
      set = low + middle + high
      set.sort
    end

  end

end
