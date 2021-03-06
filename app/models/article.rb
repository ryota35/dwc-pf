class Article < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :admin, optional: true
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :article_tag_relations, dependent: :destroy
  has_many :tags, through: :article_tag_relations, dependent: :destroy

  attachment :image

  enum level: { 初級: 0, 中級: 1, 上級: 2 }

  validates :title, presence: true, length: {maximum: 50}
  validates :body, presence: true
  validates :level, presence: true

  def reading_time
    reading_time = body.length / 300
    if reading_time < 1
      p "読了目安時間 1分以内"
    else
      p ("読了目安時間 #{reading_time}分")
    end
  end


  def self.search(search)
    Article.where(['title LIKE ?', "%#{search}%"])
  end

end
