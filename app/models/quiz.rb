class Quiz < ApplicationRecord

  has_many :results, dependent: :destroy

  validates :question, presence: true

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
# def get_answer
#     if answer == 1
#       choice1
#     elsif answer == 2
#       choice2
#     elsif answer == 3
#       choice3
#     else
#       choice4
#     end
# end

end
