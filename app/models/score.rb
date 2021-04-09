class Score < ApplicationRecord

  belongs_to :user
  has_many :results, dependent: :destroy
  accepts_nested_attributes_for :results

end
